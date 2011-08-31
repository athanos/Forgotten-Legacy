/****************************************************************************
*    Forgotten Legacy Mud is written by Athanos with lots of help from      *
*             Michael "borlaK" Morrison and Jason "Pip" Wallace             *
*                   borlak@borlak.org             jason@jasonrules.org      *
*                                                                           *
* Read ../doc/licence.txt for the terms of use.  One of the terms of use is *
* not to remove these headers.                                              *
****************************************************************************/

/*
update.c -- timers and what not
*/

#include "stdh.h"

///////////////
// FUNCTIONS //
///////////////
// this update is for backing up the MySQL database, roughly once a day since
// the last time the database was saved
void backup_update(void)
{
	long difference = current_time - mudtime.backup;

	if(difference >= 60*60*BACKUP_HOURS) // 24 hours default
		backup_mud();
}


void creature_update(void)
{
	CREATURE *crit=0;
	CREATURE *crit_next=0;
	char buf[MAX_BUFFER];
	static int counter=0;

	counter++; // tick counter

	for(crit = creature_list; crit; crit = crit_next)
	{
		crit_next = crit->next;

		// don't process anything on mobs that are in areas w/no players (idle area)
		if(!IsPlayer(crit) && crit->in_room->area->players < 1)
			continue;

/*		if(counter % 4 == 0 && IsPlayer(crit)
		&& flag_isset(crit->flags, CFLAG_ANTIIDLE))
			sendcrit(crit,"Anti-Idle");
*/
		if (counter % 4 == 0 && IsPlayer(crit) && IsPlaying(crit)) // No-Op! 0
		{
			buf[0] = '\0';
			send_to(crit->socket,buf);
		}
	}
}


void object_update(void)
{
	OBJECT *obj=0;
	OBJECT *obj_next=0;
	ROOM *room=0;
	char *action=0;

	for(obj = object_list; obj; obj = obj_next)
	{
		obj_next = obj->next;

		if(obj->timer && --obj->timer == 0)
		{
			room = obj->in_room ? obj->in_room : obj->held_by ? obj->held_by->in_room : 0;
			if(room)
			{
				switch(obj->objtype)
				{
				case OBJ_DRINK:	action = "dries up"; break;
				case OBJ_FOOD:	action = "rots away"; break;
				case OBJ_LIGHT:	action = "goes out for good"; break;
				default:	action = "crumbles to dust"; break;
				}
				message("$n $p.",obj,room,action);
			}
			free_object(obj);
		}
	}
}


void reset_update(void)
{
	char buf[MAX_BUFFER];
	CREATURE *crit=0;
	OBJECT *obj=0, *container=0;;
	RESET *reset=0, *reset_next=0, *orig=0;
	EXIT *exit=0;
	long min=0;

	for(reset = hash_reset[(current_time)%HASH_KEY]; reset; reset = reset_next)
	{
		reset_next = reset->next_hash;

		if(current_time < reset->poptime)
			continue;

		if( percent() < reset->chance
		|| (reset->max && reset->loaded >= reset->max))
		{
			add_reset(reset);
			continue;
		}
	
		obj = container = 0;
		crit = 0;

		for(orig = reset; reset; reset = reset->next)
		{
			// each reset has a chance to load.. don't have to calculate the first reset again though
			// hence the reset->prev
			if((reset->prev
			&&  percent() < reset->chance)
			|| (reset->max && reset->loaded >= reset->max))
				continue;

			min = reset->min;

			while(min > 0 && reset->loaded < reset->max)
			{
				switch(reset->loadtype)
				{
				case TYPE_CREATURE:
					crit		= new_creature(reset->crit->vnum);
					crit->reset	= reset;
					reset->loaded++;
					// trans crit to room
					trans(crit, reset->room);

					// if builder put in some command for the mob to do at spawn, put it here
					if(reset->command)
						interpret(crit, reset->command);

					// reset container to 0 in case more objects load on this mob
					container = 0;
					break;
				case TYPE_OBJECT:
					obj		= new_object(reset->obj->vnum);
					obj->reset	= reset;
					reset->loaded++;

					// trans obj to container, or crit, or room.. in that order
					trans(obj, container ? (void*)container : crit ? (void*)crit : (void*)reset->room);

					// when object pops on a mob the builder has the option to make the crit wear it...
					if(crit && ValidString(reset->command))
					{
						sprintf(buf, "wear %s", reset->command);
						interpret(crit, buf);
					}

					// if this is a container, set the pointer so stacking can occur
					if(obj->objtype == OBJ_CONTAINER)
						container = obj;
					break;
				case TYPE_EXIT:
					if(!(exit = find_exit(reset->room, reset->command)))
					{
						mudlog("RESET_UPDATE: no exit found for reset#%li",reset->id);	
						break;
					}
					exit->door = reset->loaded;
					break;
				}
				min--;
			}
		}

		add_reset(orig);
	}
}


void heal_update(void)
{
	CREATURE *crit=0;

	for(crit = creature_list; crit; crit = crit->next)
	{
		if(crit->hp < -4)
			hurt(crit,1);
		else if(crit->hp < crit->max_hp)
			heal(crit,1);

		if(crit->move < crit->max_move && crit->hp > 0)
			crit->move++;

		position_check(crit);
	}
}


// this just updates anything on sockets only,  every second
void socket_update()
{
	MSOCKET *socket;
	for(socket = socket_list; socket; socket = socket->next)
	{
		if(socket->save_time > 0)
			socket->save_time--;
	}
}


void mud_update(void)
{
	static long creature_time = 0;
	static long object_time = 0;
	static long reset_time = 0;
	static long mysql_time = 0;
	static long mudtime_time = 0;
	static long backup_time = 0;
	static long heal_time = 0;
	static long socket_time = 0;

	if( ++socket_time % (LOOPS_PER_SECOND) == 0 )
		socket_update();
	
	if( ++heal_time % (LOOPS_PER_SECOND*5) == 0 )
		heal_update();	

	if( ++creature_time % (LOOPS_PER_SECOND*60) == 0 )
		creature_update();

	if( ++object_time % (LOOPS_PER_SECOND) == 0 )
		object_update();

	if( ++reset_time % (LOOPS_PER_SECOND) == 0 )
		reset_update();

	if( ++mysql_time % (LOOPS_PER_SECOND*60*60) == 0 )
		mudlog("Pinging mysql server == %s", mysql_ping(mysql) == 0 ? "Connected" : "Disconnected");

	if( ++mudtime_time % (LOOPS_PER_SECOND) == 0 )
	{
		if(mudtime_time % (LOOPS_PER_SECOND*60*15) == 0) // 15 minutes
			fwrite_time();
		mudtime.age++;
	}

	if( ++backup_time % (LOOPS_PER_SECOND*60*60) == 0) // check at startup and every hour
		backup_update();
}


