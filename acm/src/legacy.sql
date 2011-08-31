-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: legacy
-- ------------------------------------------------------
-- Server version	5.1.49-3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `builders` text,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `low` int(11) DEFAULT NULL,
  `high` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (2,'default','Athanos','2008-12-03 22:41:33',1,1000),(23,'Test Area','all','2008-12-03 22:45:30',1001,2000);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ban`
--

DROP TABLE IF EXISTS `ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ban` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ip` text,
  `message` text,
  `name` text,
  `bantype` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ban`
--

LOCK TABLES `ban` WRITE;
/*!40000 ALTER TABLE `ban` DISABLE KEYS */;
/*!40000 ALTER TABLE `ban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature`
--

DROP TABLE IF EXISTS `creature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `keywords` text,
  `vnum` int(11) DEFAULT NULL,
  `prototype` int(11) DEFAULT NULL,
  `room` int(11) DEFAULT NULL,
  `long_descr` text,
  `description` text,
  `wear` text,
  `loaded` text,
  `level` int(11) DEFAULT NULL,
  `dexterity` int(11) DEFAULT NULL,
  `intelligence` int(11) DEFAULT NULL,
  `strength` int(11) DEFAULT NULL,
  `iq` int(11) DEFAULT '13',
  `alignment` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `move` int(11) DEFAULT NULL,
  `max_move` int(11) DEFAULT NULL,
  `hp` int(11) DEFAULT NULL,
  `max_hp` int(11) DEFAULT NULL,
  `flags` text,
  `me` int(11) DEFAULT '13',
  `ma` int(11) DEFAULT '13',
  `ps` int(11) DEFAULT '13',
  `pp` int(11) DEFAULT '13',
  `pe` int(11) DEFAULT '13',
  `pb` int(11) DEFAULT '13',
  `spd` int(11) DEFAULT '13',
  `race` text,
  `occ` text,
  PRIMARY KEY (`ID`),
  KEY `part_of_name` (`name`(6)),
  KEY `vnum` (`vnum`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature`
--

LOCK TABLES `creature` WRITE;
/*!40000 ALTER TABLE `creature` DISABLE KEYS */;
INSERT INTO `creature` VALUES (1,'Default Creature','default creature',1,1,NULL,'A Default Creature is here','It looks default.','arms body head held held feet finger finger hands legs neck waist wrist wrist','',0,10,10,10,0,0,1,1,0,50,50,50,50,'8',0,0,13,13,13,13,13,NULL,NULL),(2,'A horse','horse',2,1,NULL,'A horse is here.','You see a fucking horse.','arms body head held held feet finger finger hands legs neck waist wrist wrist','',3,10,10,10,0,0,0,1,0,0,15,0,15,'1103446280',0,0,13,13,13,13,13,NULL,NULL),(3,'A smarmy banker','banker',3,1,NULL,'A banker is here, just begging to be banked upon.','You see a very smarmy banker.','arms body head held held feet finger finger hands legs neck waist wrist wrist','',100,0,0,0,0,0,1,1,0,0,0,0,0,'2048',0,0,13,13,13,13,13,NULL,NULL),(4,'Default Creature','default creature',1,1,1,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,0,13,13,13,13,13,NULL,NULL),(5,'New','default creature',1,0,1,'A Default Creature is here','It looks default.','arms body head held held feet finger finger hands legs neck waist wrist wrist','',2,10,10,10,0,0,1,1,0,50,50,50,50,'203',0,0,13,13,13,13,13,NULL,NULL),(6,'Dog','default creature',1,0,1,'A Default Creature is here','It looks default.','arms body head held held feet finger finger hands legs neck waist wrist wrist','',2,10,10,10,0,0,1,1,0,50,50,50,50,'203',0,0,13,13,13,13,13,NULL,NULL),(7,'Guest','default creature',1,0,1,'A Default Creature is here','It looks default.','arms body head held held feet finger finger hands legs neck waist wrist wrist','',0,10,10,10,0,0,1,1,0,50,50,50,50,'203',0,0,13,13,13,13,13,NULL,NULL),(8,'Default Creature','default creature',1,0,1,'A Default Creature is here','It looks default.','arms body head held held feet finger finger hands legs neck waist wrist wrist','',0,10,10,10,0,0,1,1,0,50,50,50,50,'9',0,0,13,13,13,13,13,NULL,NULL),(100,'Athanos','default creature',1,0,1,'A Default Creature is here','It looks default.','arms body head held held feet finger finger hands legs neck waist wrist wrist','',20,10,10,10,13,0,1,1,0,50,50,50,50,'203',6,5,5,13,11,11,3,'Elf','Assassin'),(102,'Ryodan','default creature',1,0,1,'A Default Creature is here','It looks default.','arms body head held held feet finger finger hands legs neck waist wrist wrist','',0,10,10,10,14,0,1,1,0,50,50,50,50,'203',13,6,15,11,12,9,9,'Wolfen','Ranger'),(103,'Test','default creature',1,0,1,'A Default Creature is here','It looks default.','arms body head held held feet finger finger hands legs neck waist wrist wrist','',0,10,10,10,3,0,1,1,0,50,50,50,50,'203',10,2,19,7,16,2,17,'Adram','Mercenary'),(104,'Testtwo','default creature',1,0,1,'A Default Creature is here','It looks default.','arms body head held held feet finger finger hands legs neck waist wrist wrist','',0,10,10,10,1,0,1,1,0,50,50,50,50,'203',3,0,15,4,12,3,12,'Adram','Mercenary');
/*!40000 ALTER TABLE `creature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extra`
--

DROP TABLE IF EXISTS `extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extra` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` text,
  `description` text,
  `loadtype` text,
  `vnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra`
--

LOCK TABLES `extra` WRITE;
/*!40000 ALTER TABLE `extra` DISABLE KEYS */;
/*!40000 ALTER TABLE `extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` text,
  `entry` text,
  `last` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hindex` text,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help`
--

LOCK TABLES `help` WRITE;
/*!40000 ALTER TABLE `help` DISABLE KEYS */;
INSERT INTO `help` VALUES (6,'help','This is the general help file.\n\r\n\rYou can type \'&+Whelp topic&n\' to get a list of\n\rthe help topics, and then \'&+Whelp topic <&n&+ctopic name&n&+W>&n\' to see\n\rthe help files that match that topic.\n\r\n\rType \'&+Whelp all&n\' to show all help files.\n\r\n\rType \'&+Whelp credits&n\' for some credits.\n\r\n\rThank you.','2008-12-08 22:14:19','General',0),(5,'credits','Forgetten Legacy Mud was created by:\n\r\n\rAthanos.\n\rathanos@charter.net\n\r\n\rBorlak\n\rPip\n\r','2008-12-03 22:02:44','General',0),(102,'restore','Syntax: restore <creature>\n\r        restore all\n\r\n\rRestore will heal all ailments and put the creature back to full health.','2005-03-31 16:25:55','Commands',1),(7,'wizlist,immortals','The Immortals of Forgotten Legacy\n\r\n\rCreators | Implementors\n\r-----------------------\n\rAthanos\n\r\n\r\n\r-----------------------','2008-12-03 22:23:52','General',0),(112,'olc_crit_level','A creature\'s level currently has no meaning, but the general intention was to\n\rmake the level affect the creature\'s healthpoints, damage, armor, and so on.\n\r\n\rLevels for players are only used to determine immortal power.  Levels range\n\rfrom 1 to 20; Implemetor (20), Builder (19), and Immortal (18).\n\rAll other levels will be player levels once it has been implemented.','2008-12-08 22:17:22','OLC',1),(26,'prompt','The prompt is set with the config command. \n\rSee [&+Whelp config&n] for details on setting it.\n\r\n\rThe following are the prompt \"options\" that you \n\rcan set your prompt to.\n\r\n\r%a: The area name.\n\r%e: The exits in the room you are currently in.\n\r%h: Your current hit points.\n\r%H: Your maximum hit points.\n\r%m: Your current movement points.\n\r%M: Your maximum movement points.\n\r%n: A new line.\n\r%r: The name of the current room.\n\r\n\rAn example of a prompt would be:\n\r&+Wconfig prompt <%h/%Hhp Room: %r>&n\n\rwhich displays:\n\r<50/50hp Room: Default Room> ','2004-01-16 13:50:30','general',0),(16,'message','// MESSAGE -- main messaging utility for the mud.  Can message everyone in room, and you can\n\r// EXTRA(Borlak hits Pip with a big pointy stick!)\n\r// world->1 for all players, 2 for all players get the message _immediately_ (shutdown)\n\r\n\rthe meanings of the variables:\n\rvar              You see              They see\n\r---            -----------          -------------\n\r$e                You                  he/she\n\r$m                Your                him/her\n\r$n                You                (Your Name)\n\r$p              (object)              (object)\n\r$r                are                   is\n\r$s                Your                his/her\n\r$t                Your                 their\n\r$x               (no s)                 s\n\r$X                 s                   (no s)\n\r$z                Your               (Your Name)\'s\n\r$v                have                 has\n\r$b               (no es)                 es\n\r$B                 es                  (no es)\n\r$y                  y                    ies\n\r$d/$D             don\'t                doesn\'t\n\r$g/$G              go                   goes','2007-11-18 17:44:03','General',0),(17,'dig','Syntax: dig <direction> <reverse>\n\r\n\rYou can use the dig command to quickly create new rooms in your area.  The\n\rbasic syntax is dig <direction> <reverse>\n\rYou would supply reverse for unusual directions, that aren\'t in the default\n\rdirection table.  An example might be: dig forward backward\n\rThe default directions, and their reverse are:\n\rnorth       south\n\rsouth       north\n\reast        west\n\rwest        east\n\rup          down\n\rdown        up\n\rnortheast   southwest\n\rsouthwest   northeast\n\rnorthwest   southeast\n\rsoutheast   northwest\n\renter       exit\n\r','2005-03-30 20:06:17','Commands',0),(20,'ansi,color,colour','To access the color codes, the format is:\n\r&&+ for foreground color.\n\r&&- for background color.\n\r&&= for background, then foreground color.\n\r&&N is used to reset colors back to default.\n\r\n\rThe actual color codes are:\n\rL = Black\n\rR = Red\n\rG = Green\n\rY = Yellow\n\rB = Blue\n\rM = Magenta\n\rC = Cyan\n\rW = White\n\rK = Random\n\rN = Default/Normal\n\r\n\rUsing foreground colors, lower case letters will be duller, while capital letters\n\rwill be bright.\n\r\n\rUsing background color, lower case letters will be the regular color, and capital\n\rletters will make the foreground text blink.\n\r\n\rExamples:  &&+Rtest   &+Rtest\n\r           &&-Rtest   &-Rtest\n\r        &&-r&&+gtest   &-r&+gtest\n\r           &&=rBtest  &=rBtest\n\r','2004-01-16 13:50:30','General',0),(25,'config','&+WHrs from GMT:&N\n\rThis setting tells the game how to display time for\n\ryour timezone.  Depending on what time zone you are\n\rin, you set the value equal to how many hours your\n\rtime zone is from GMT.  For example, the eastern \n\rtime zone is -5 hours from GMT.  ex: config hrs -5\n\r\n\r&+WLines:&N\n\rThis setting tells the game how many lines to show\n\ryour screen at a time.  When it reaches this limit,\n\rit will pause the output to let you view it better.\n\rFor example if you can only see 24 lines at a time, \n\ryou would want to set it to 24   ex: config lines 24\n\r\n\r&+WBrief:&N\n\rBrief toggles on or off room descriptions.  With\n\rthis on, when you enter a room you will only see\n\rthe room name, the exits, and any players or objects.\n\rex: config brief\n\r\n\r&+WAnsi:&N\n\rThis setting tells the game whether or not to display\n\rcolor to your screen.  It is a toggable value, so you\n\rdon\'t need to set it to a value.  ex: config ansi\n\r\n\r&+WPrompt:&N\n\rThis setting lets you compose your own prompt.  You\n\rcan set it to any number of things.  These are listed\n\runder [help prompt].  ex: config prompt <%h> \n\r\n\r&+WBlank:&N\n\rThis setting tells the game whether or not to show\n\ra blank line after your prompt.  It is a toggable \n\rvalue, so you don\'t need to set it to a value.\n\rex: config blank\n\r\n\r&+WMenu:&N\n\rThis setting tells the game whether or not to show\n\rthe menu when you first connect.  It is a toggable\n\rvalue, so you don\'t need to set it to a value.\n\rex: config menu','2004-03-23 21:14:37','general',0),(21,'building guide','&+C1)&n &+rNEVER&n use expressions like: \"You are standing\", \"You are walking\", etc.\n\r   The reason for this is that the player could be flying or resting or\n\r   even sleeping.  In general &+rAVOID&n using the word &+yYOU&n.\n\r&+C2)&n&+r NEVER&n tell a player what he or she feels when entering a room.\n\r   Different players feel different things and the feelings also vary\n\r   according to the level of the player.  It can be annoying to be told\n\r   that you feel afraid if the area is for level 10 players and\n\r   you are level 40.  It can also be irritating to be told you feel\n\r   safe, when you just fled from a massive creature to the room.  These\n\r   kinds of phrases think for the player.  A good description is\n\r   supposed to get a player into a certain mood, not &+rTELL&n them what\n\r   that mood is.\n\r&+C3)&n&+r NEVER&n tell the player how they are dressed or equipped, since this can vary\n\r   considerably.\n\r&+C4)&n&+r AVOID&n describing the creatures in the room if they are reset there.\n\r   It looks rather silly to have a room description tell you that a\n\r   horrible, snarling minotaur is there looking at you as his next meal,\n\r   when in fact his steaming guts are lying on the floor.  The creature\n\r   has its own description.  Describe any creatures that will be reset\n\r   in the creature\'s olc.  You can talk about creatures that are in the\n\r   general area though.  Such as:  The street is full of busy citizens\n\r   buying goods from local merchants, or something like that.  The citizens\n\r   themselves are not going to be resets in the room that the\n\r   player can interact with.\n\r&+C5)&n Be careful how you describe the size and looks of things.  What\'s \'normal\'\n\r   to one player may not be to another.  A giant might think that the man\n\r   is rather short, but a pixie will think the man an enormous being.  A\n\r   beautiful woman by human standards may be the ugliest thing on earth to\n\r   a dwarf.  Keep these things in mind.\n\r&+C6)&n&+r AVOID&n describing objects that will be reset in the room as well.  It\n\r   is ok to describe furniture that the players will not interact with, but\n\r   make sure you do not create a piece of furniture for them to sit on and\n\r   then also describe it in the room.  This makes for duplicate descriptions\n\r   and therefore is redundant.\n\r&+C7)&n Remember that a room can usually be entered from different directions.\n\r   Do not say \"This room is much smaller than the one you just came from\"\n\r   People may not have come the same way to that room.  Again you should\n\r   avoid the word &+yYOU&n anyway.\n\r&+C8)&n&+r AVOID&n statements about the weather.  If a weather code is put in and you\n\r   describe the room as bright and sunny, and the player gets a message\n\r   saying \"It begins to rain\", there will be a conflict.  If you want the\n\r   weather to be constant in an area, set the \'inside\' room flag on the\n\r   room.  This will generally prevent the weather messages from showing in\n\r   that paricular room.\n\r&+C9)&n&+r AVOID&n repeated descriptions as much as possible.  These should only happen\n\r   within a maze of some sorts, or large open spaces like fields or deserts.\n\r\n\rI know this is a lot of &+rNEVER\'s&n and &+rDO NOT\'s&n.  So what &+CSHOULD&n you do in a room\n\rdescription?  That is what will be discussed next.\n\r\n\rType \'&+Chelp building guide2&n\' for the rest of this information.\n\r','2008-12-08 21:26:25','OLC',0),(22,'resets,reset','Syntax: resets\n\r        edit reset <#>\n\r        edit reset new <#>\n\r\n\rThese commands will let you see the resets in a room and then edit them,\n\ror add new ones.\n\r\n\rIMPORTANT: The order of resets is essential.  The rules are:\n\r1) Any object under a mobile loads on that mobile.\n\r2) Any objects above all the mobiles in a room load to the room.\n\r3) Any objects below a container object load inside the container.\n\r\n\rYou can use these rules to do fairly complicated reset loading.  You could\n\rhave a loaf of bread that loads inside a bag, the bag load inside a\n\rbackpack, and the backpack load on the mob.','2005-04-09 18:46:39','OLC',0),(148,'cedit,hedit,oedit,redit,sedit,xedit','Syntax: SEE HELP EDIT\n\r\n\rThese are various shorcuts for the \'edit\' command.\n\rcedit = edit creature\n\rhedit = edit help\n\roedit = edit object\n\rredit = edit room\n\rsedit = edit social\n\rxedit = edit reset','2005-04-10 21:10:42','Commands',1),(30,'MOTD,Message of the Day','To an optimist the glass is half full.\n\rTo a pessimist the glass is half empty.\n\rTo a programmer the glass is twice as big as it needs to be. ','2004-03-13 20:14:45','General',0),(35,'building guide2','&+C1)&n  Room descriptions should be between &+C3&n and &+C8&n lines long.  It is nearly\n\r    impossible to get the sense or feel of a room from one line descriptions.\n\r&+C2)&n  The room name should be capitalized as the title of a book.  Capitalize\n\r    all words except articles (a, the, an) and prepositions (in, of, on, etc.),\n\r    unless that word begins the room name.  Some examples:\n\r    Along the Main Road\n\r    Inside the Northern Gate\n\r&+C3)&n  Make sure to use proper grammer.  Know the difference between it\'s and its.\n\r    \"It\'s\" is used when you are saying \"it is\" and \"its\" is used as an adjective \n\r    to describe ownership.  If you aren\'t sure which to use, look it up in a grammer book, \n\r    or ask someone.\n\r&+C4)&n  There shall be &+Ctwo&n spaces between every sentence.  This is for all types\n\r    of descriptions (creature, room, and object).\n\r&+C5)&n  Try to use neutral wording.  The description should fit with whatever\n\r    situation the player is in.  Instead of saying \"The bright sun reflects\n\r    off the sand, limiting visibility\", say \"On clear days, the sun reflects\n\r    off the sand, limiting visibility\".  This will allow the player to see\n\r    what\'s there under certain conditions.  If it\'s raining, the player will\n\r    know that it isn\'t clear and be able to get the \'sense\' of the room\n\r    based on his situation.  Using words like usually, often, sometimes, etc.\n\r    will help make things neutral.  Avoid using words like never or always.\n\r&+C6)&n  Once your room is finished, &+Cproofread&n it.  After you have re-read it, &+Cdo&n\n\r    &+Cit again&n.  Then, ask someone else to read it.  When that is completed,\n\r    contact the head builder for approval.\n\r&+C7)&n  Creatures have both short and long descriptions.  The short description\n\r    &+Cmust&n contain an article (a, an, the).  The long description &+Cmust&n contain\n\r    the &+Ckeyword&n for the creature or object.\n\r&+C8)&n  Obtain a thesaurus!  This will be your friend.  Use of adjectives is what\n\r    makes a description.  On the other hand, use of the same adjectives over and\n\r    over can be rather annoying.  Use different words for a more enjoyable reading.\n\r&+C9)&n  Make sure that your area, room, creature, and object follow the theme of \n\r    the mud.  Not only the theme of the mud, but rooms, creatures and objects should \n\r    follow the theme of your area.  It doesn\'t make sense to have a sword made from \n\r    ice loading into Hell.\n\r&+C10) Above all, &+CHave FUN!!&n  These rules are not meant to limit you in your\n\r    creativity.  They are designed to make a consistent structure for the mud.  Your\n\r    imagination should not be hampered by these rules.  However, you may need to be\n\r    more creative than you expected in order to accurately obtain the correct structure\n\r    for your area and the mud in general.\n\r\n\rFor help with the &+COLC&n editor type \'&+Chelp OLC&n\'','2008-12-08 21:45:59','OLC',0),(43,'channels,music,immtalk,chat','Channels are a way to communicate globally on the mud.\n\rThe available channels are: chat, music, builder, immtalk\n\r\n\rYou cannot use the immtalk and builder channels without\n\rthe required immortal level.\n\r\n\rYou may turn off a channel by simply typing it\'s name\n\rwith no arguments (ie. \"chat\").  You can turn it back on\n\rby doing the same thing, or by saying anything on the\n\rchannel.\n\r\n\rSome channels have a \"shortcut\" character.  The chat\n\rchannel shortcut is a period \".\", and the immortal\n\rchannel is a colon \":\".','2004-03-19 16:29:26','General',0),(44,'olc_obj_keywords,olc_crit_keywords,olc_extra_keywords','Syntax: keyword <new keyword>\n\r        keyword remove <keyword>\n\r\n\rKeywords are how players examine or manipulate objects\n\rand creatures in the mud.\n\rThey should contain a word from both the name and long\n\rdescription, so that the player will always be able to\n\raccess the creature/object.\n\r\n\rKeywords for extra descriptions work the same as any\n\rother keyword.','2005-04-04 19:21:10','OLC',2),(45,'olc_obj_name,olc_crit_name,olc_room_name,olc_area_name,olc_social_name','Syntax: name <name of object>\n\r\n\rFor objects and creatures, the name is what the player\n\rsees when manipulating these things.  An example object\n\rname might be \"a dagger\" and a creature might be \"a dog\".\n\r\n\rRoom names are the \"title\" of the room -- the first thing\n\ra player sees when entering a room, whether they have\n\rbrief toggled on or off.  An example room name might be\n\r\"A Worn Path\".\n\r\n\rSocial names are what the player will type to activate\n\rthe social.\n\r\n\rArea names are what the player will see in the \"area\"\n\rcommand.','2004-03-21 02:56:33','OLC',2),(46,'olc_obj_longdescr,olc_crit_longdescr','Syntax: longdescr <long description>\n\r\n\rA long description is what a player will see of a \n\rcreature or object that is in the room.  The first\n\rword should be capitalized, and form some kind of\n\rsentence describing the objects presence in the\n\rroom.  A sample object long description might be:\n\rA dagger lies on the ground here.','2004-03-21 03:05:49','OLC',2),(47,'olc_obj_description,olc_crit_description,olc_room_description,olc_extra_description','Syntax: description <description>\n\r\n\rThe description is what a player sees when they look\n\rat an object or creature, or when they enter a room\n\rif they have brief mode off.\n\rYou may want to use the string editor for the\n\rdescription since they typically take up multiple \n\rlines.  To use the string editor, type:\n\rdescription @\n\rAlso note, the string editor will work for any\n\rstring in OLC (though I wouldn\'t recommend a multiple\n\rline name)','2005-04-04 19:22:03','OLC',2),(48,'look','Syntax: look\n\r        look <object/creature>\n\r        look <extra description keyword>\n\r        look verbose\n\r\n\rThe look command shows you what is in a room by default.  If\n\ryou have brief toggled off, it will show you the room description.\n\rIf you have brief toggled on but want to see the room description,\n\rtype \"look verbose\".\n\r\n\rYou can also look at objects or creatures with this command, and\n\rany extra descriptions that may be in a room.','2004-03-23 21:02:10','General',0),(152,'password','Syntax: password <old password> <new password> <confirm new password>\n\r\n\rThis command changes your password.','2007-11-18 15:30:42','Commands',0),(42,'olc,building','The OLC of Forgotten Legacy is pretty robust.  It is a menu based system, \n\rwith built in shortcuts.  For each object, you will see a menu item and a number \n\rnext to it.  You can either use the number, or the name of the menu item to\n\rreference/change/set it.\n\r\n\r&+C1)&n You use the editor to edit the prototypes AND instances of the game.  There\n\r   is no \'set\' \'mset\' \'oset\' command.  To edit an object in your inventory, you\n\r   would type \'&+Cedit object&n &+W<&n&+Cobject name&n&+W>&n\'.  To edit a prototype, you would type\n\r   \'&+Cedit object&n &+W<&n&+Cobject vnum&n&+C>&n\'.\n\r\n\r&+C2)&n Most of the menu items have boundaries set in the code.  You will notice\n\r   limits on string length, and maximum and minimum number amounts.\n\r\n\r&+C3)&n The \'&+Cstring lists&n\' use the string functions str_add and str_minus, so you do\n\r   not have to re-type the whole line.  On wear locations,  for example, you can\n\r   just type \'&+Cwear ear&n\' to add an ear slot.  To remove the ear slot, you must\n\r   type \'&+Cwear ear remove&n\'.\n\r\n\r&+C4)&n There is a string editor you can use with any menu item, although it may not\n\r   make sense to use it with some (such as keywords).  To use this string\n\r   editor, you reference the menu item followed by a \'@\' (ie. \'&+Cname @&n\' or \'&+C4 @&n\').  The\n\r   string editor will come up and show the available commands.  The string\n\r   editor\'s purpose is so you can make multi-line strings.  This is useful for\n\r   descriptions, notes, help files, etc.\n\r\n\r&+C5)&n Flags are done similar to the string lists, but you do not have to supply\n\r   the \'remove\' argument to remove a flag.  To add and remove a flag, simply\n\r   reference the menu item and type the name of the flag.\n\r\n\r&+C6)&n Both instances and prototypes have a \'&+CBuilders&n\' field, which show who has\n\r   edited the object, if anyone.  This helps track down any possible cheating\n\r   imms, or helps find out who screwed up one of your objects ;)\n\r\n\rExample of an OLC Menu:\n\r[PLAYER] Builders[Borlak]\n\r    Vnum:           1\n\r 1. Keywords:       dorkus\n\r 2. Name:           Borlak\n\r 3. Level:          3\n\r 4. Description (short): A default creature.\n\r 5. Long Descr:     A dorkus is here.\n\r 6. Wear Locations: held held body legs arms waist neck hands feet wrists finger finger\n\r 7. Dexterity:      10\n\r 8. Strength:       10\n\r 9. Intelligence:   10\n\r10. Hp:             25\n\r11. Movement:       50\n\r12. Sex:            male\n\r13. Flags:          [Player Ansi Mount Notify]\n\r[Player Variables]\n\r14. Who_name\n\r','2008-12-08 21:54:14','OLC',0),(54,'note,notes','Syntax: Note <list/read #/remove #>\n\rTo create a new note, use: edit note\n\r\n\rNotes are the muds bulletin board of sorts.  You can leave\n\rnotes to a specific player and only he or she will be able\n\rto read it.\n\r\n\rYou can also write a note to builders or immortals.','2005-03-30 19:39:18','Commands',0),(55,'commands','This command shows you all the commands available to you in the mud.','2005-03-30 19:42:12','Commands',0),(56,'save,saving','\n\rSyntax: save\n\r\n\rThis command will save your character.  It is a good idea to save\n\rfrequently in case of crashes.\n\r\n\rDue to possible abuse, you are limited to using the save command\n\ronce every 30 seconds.','2005-03-30 19:46:03','Commands',0),(58,'clear','Syntax: clear\n\r\n\rThis command clears/resets the screen.','2005-03-30 19:49:35','Commands',0),(59,'config,toggle','Syntax: config <option> <value>\n\r        config\n\r\n\rSimply type config to see what options are set up for your player\n\rand terminal type.\n\r\n\r&+WHrs from GMT: How many hours difference are you from GMT?  You can\n\ruse positive or negative numbers.  This will make sure the \'time\' \n\rcommand on the mud shows the correct time for you.\n\r&+WLines:&N How many lines does your terminal have?  This will\n\rdetermine when auto page-pausing of long messages of text (such as\n\rthis help file) will break off and ask you to press enter.\n\r&+WAnsi:&N Do you want ansi on?\n\r&+WBrief:&N Do you want to see the whole descriptions of rooms?\n\r&+WPrompt:&N What is your current prompt?  Type config prompt to\n\rsee various prompt styles - or set your own.  Help prompt\n\r&+WBlank:&N Do you want a blank line inbetween each prompt?\n\r&+WMenu:&N Do you want to see the menu when you log in to the mud?\n\r&+WAnti-Idle:&N Have problems getting disconnected when you idle?\n\rTurning this on may help you.\n\r---Immortal Only---\n\r&+WNotify:&N Do you want notify messages (logs and such)?\n\r&+WWizInvis:&N Turn on wizinvis.','2005-03-30 19:57:47','Commands',0),(60,'eat,eating','Syntax: eat <food>\n\r\n\rThis eats something.\n\r\n\rAn immortal can eat anything.','2005-03-30 19:59:00','Commands',0),(61,'hunt','Syntax: hunt <something>\n\r\n\rThis will give you a general direction of where to find something.','2005-03-30 19:59:54','Commands',0),(62,'reply','Syntax: reply <text>\n\r\n\rThis sends a reply (tell) back to the last person that sent a tell\n\rto you.','2005-03-30 20:00:18','Commands',0),(63,'say','Syntax: say <text>\n\r\n\rThis sends a message to everyone in the room with you.','2005-03-30 20:00:50','Commands',0),(64,'tell','Syntax: tell <person> <text>\n\r\n\rThis sends a message to the person you specify.','2005-03-30 20:01:13','Commands',0),(65,'title','Syntax: title <text>\n\r\n\rThis sets your title on the who list.','2005-03-30 20:01:41','Commands',0),(66,'mount','Syntax: mount <victim>\n\r\n\rThis mounts you on top of victim.  You can ride them around.','2005-03-30 20:02:31','Commands',0),(67,'dismount','Syntax: dismount\n\r\n\rThis removes you from being on top of a mount.','2005-03-30 20:02:53','Commands',0),(68,'edit,editing','Syntax: edit <object> <identifier> <options>\n\robjects: creature object room reset social help note area ban\n\r\n\rEdit lets you create new rooms/objects/mobiles and various other\n\rthings.  As a player you will use this command to start creating\n\ra note.\n\r\n\rYou can use this command to edit instances of objects/mobiles\n\ras well.  You can edit and change the properties of the sword in\n\ryour inventory.  Only implementors can edit players.','2005-03-30 20:18:28','Commands',0),(69,'areas','Syntax: areas\n\r\n\rThis shows all the areas in the mud, who built them, and how \n\rmany players are currently in that area.\n\r\n\rIt also has a few other variables that are helpful to the staff.','2005-03-30 20:10:19','Commands',0),(70,'time','Syntax: time\n\r\n\rTime will show you the current uptime of the mud, the current\n\rreal-life time, and tell you whether the last startup of the mud\n\rwas from a reboot or crash.','2005-03-30 20:11:18','Commands',0),(71,'socials','Syntax: socials\n\r\n\rThis command will show you what socials are available on the mud.','2005-03-30 20:11:42','Commands',0),(72,'emote','Syntax: emote [creature/object] <text>\n\r\n\rEmote is a way for a character to express himself.  An example might\n\rbe:  emote is cool!\n\rWould show to the room:\n\rBorlak is cool!\n\r\n\rThe creature and object variables are optional.','2005-03-30 20:14:01','Commands',0),(73,'who','Syntax: who\n\r\n\rThis command will show you who is on the mud.','2005-03-30 20:14:20','Commands',0),(74,'equipment','Syntax: equipment [character]\n\r\n\rWith no argument, this command will list your equipment.  If you\n\rspecify a creature in the room with you, it will display his equipment.','2005-03-30 20:15:13','Commands',0),(75,'inventory','Syntax: inventory\n\r\n\rThis command lists your inventory.','2005-03-30 20:15:34','Commands',0),(76,'chat,music,immtalk,buildtalk,channels','Syntax: <channel> <text>\n\rChannels: chat, music, immtalk, buildtalk\n\r\n\rThese various channels will send a message to the mud.  You can turn\n\roff these channels by simply typing them with no argument, ie:\n\rchat\n\r\n\rOnly immortals see immtalk and buildtalk.','2008-12-08 22:23:11','Commands',0),(77,'score','Syntax: score\n\r\n\rThis command will list various statistics and abilities about your\n\rcharacter.','2005-03-30 20:18:21','Commands',0),(78,'look','Syntax: look [character/object/description]\n\r\n\rLook with no arguments will show you what room you are in, its\n\rdescription, and contents (players and objects).  \n\r\n\rYou can also look at a creature or object.\n\r\n\rSome rooms, objects, and players have extra descriptions on them.\n\rYou may find a room that mentions a crack in its description.  If\n\rthe builder has created an extra description for the crack, you can\n\rtype look crack.','2005-03-30 20:20:50','Commands',0),(79,'drop','Syntax: drop <all/object>\n\r        drop <# coins> <cointype>\n\r\n\rThis will move an object (or all objects) from your inventory to\n\rthe room you are in.','2005-03-31 21:10:19','Commands',0),(80,'open,close','Syntax: open/close <door/container>\n\r\n\rThese commands will either open or close a container or door.','2005-03-30 21:32:46','Commands',0),(81,'lock,unlock','Syntax: <lock/unlock> <door/container>\n\r\n\rThese commands will either lock or unlock a container or object.\n\r\n\rYou need the appropriate key to do so.','2005-03-30 21:33:33','Commands',0),(82,'put','Syntax: put <object> <container>\n\r        put <# coins> <cointype> <container>\n\r\n\rThis will place an object inside a container.  It will look for\n\rcontainers in your inventory first, then for containers in the\n\rroom.','2005-03-31 21:05:57','Commands',0),(83,'take,get','Syntax: take <obj> [container]\n\r        take <# coins> <cointype> [container]\n\r\n\rThis command will take items from the room and place them in your\n\rinventory.\n\r\n\rIt can also take items from inside containers that are either in\n\ryour inventory or in the room.','2005-03-31 21:06:28','Commands',0),(84,'wear,wield,hold,remove','Syntax: wear <object>\n\r        remove <object>\n\r\n\rThis command will attempt to wear, hold, or wield an object you\n\rspecify.  Not all objects can be worn or held, and you are limited\n\rto wearing one object at a time on any specific body part.\n\r\n\rThe remove command will remove the object you specify (if worn).','2005-03-30 21:39:45','Commands',0),(85,'buy,sell','Syntax: buy <object>\n\r        buy # <object>\n\r        sell <object>\n\r\n\rThese commands will let you buy and sell merchandise if you are in a\n\rroom with a shopkeeper.  You may want to type \'list\' to get a listing\n\rof the objects available to buy.\n\r\n\rIf you want to buy several of an object at a time (such as bread),\n\ruse the second syntax: buy # <object>','2005-03-30 21:42:23','Commands',0),(86,'list','Syntax: list\n\r        list <creature>\n\r\n\rThis will list the merchandise available to buy in a shop.  You have\n\rto be in a room with a shopkeeper to get any kind of listing.\n\r\n\rIf there is more than one shopkeeper in a room, you can specify them\n\rbuy name.','2005-03-30 21:45:30','Commands',0),(87,'value','Syntax: value <item>\n\r\n\rValue has two uses.  If you are in a room with a shopkeeper, you can\n\rget the value of one of the objects in your inventory before you sell\n\rit.\n\r\n\rValue can also be used to check how much it will cost to store one of\n\ryour objects in a bank.','2005-03-30 21:46:45','Commands',0),(88,'retrieve,store','Syntax: retrieve <object> [creature]\n\r        store <object>\n\r\n\rStore will give your object to a banker to be stored until you wish\n\rto retrieve it.  Storing an item has a cost, however.','2005-03-30 21:48:43','Commands',0),(89,'deposit,withdraw','Syntax: deposit <amount> <cointype>\n\r        withdraw <amount> <cointype>\n\r\n\rThese commands are used at a bank.','2005-03-30 21:49:38','Commands',0),(90,'at','Syntax: at <room/person/object> <command & arguments>\n\r\n\rThis command will put you in the room with the object you specify \n\rthen interpret the command you typed.','2005-03-31 15:14:01','Commands',1),(91,'ban','Syntax: ban <player/IP> <reason>\n\r        ban\n\r\n\rThis will ban a player, host, or IP from the mud.  You can use\n\rwildcards, such as 199.223.*\n\r\n\rType ban by itself to get a list of who is banned.\n\r\n\rTo remove a ban, you must edit it using the Edit command and then type\n\rdelete.','2005-03-31 15:16:05','Commands',1),(92,'coins','Syntax: coin <coin type> <amount>\n\r\n\rThis will create the amount of coins you specify and place them in\n\ryour inventory.','2005-03-31 15:17:10','Commands',1),(93,'disconnect','Syntax: disconnect <player>\n\r\n\rThis will disconnect a player from the mud -- they will be linkdead.','2005-03-31 15:17:37','Commands',1),(94,'echo','Syntax: echo <message>\n\r\n\rThis will echo a message to everyone in the mud.','2005-03-31 15:17:57','Commands',1),(95,'force','Syntax: force <player> <command & arguments>\n\r        force all <command & arguments>\n\r\n\rThis will force a player or every player in the mud to do the command\n\ryou specify.','2005-03-31 15:18:55','Commands',1),(96,'heal,hurt','Syntax: heal <creature> <amount>\n\r        hurt <creature> <amount>\n\r\n\rThis will raise or lower the creature\'s healthpoints by said amount.','2005-03-31 15:20:22','Commands',1),(97,'log','Syntax: log <player>\n\r        log all\n\r\n\rThis will log every command a player does, or log every command all\n\rplayers type.','2005-03-31 15:21:01','Commands',1),(98,'memory,top','Syntax: memory\n\r        top\n\r\n\rThese two commands give you an idea of how much memory and CPU the mud\n\ris using.  They aren\'t perfect, but they are close.\n\r\n\rNote to coders: depending on the output of ps or top on some linux\n\rdistros, you may have to modify these commands slightly to get the\n\rcorrect output.','2005-03-31 15:22:12','Commands',1),(99,'playerpurge','Syntax: playerpurge yes <seconds>\n\rie: playerpurge yes 31536000\n\rThe example above would delete any players that haven\'t logged in for \n\ra year.','2005-03-31 15:23:09','Commands',1),(100,'purge','\n\rSyntax: purge <creature/object>\n\r        purge\n\r\n\rThis will remove an object from the mud (delete it).  It will not\n\rremove it permanently from the mud SQL database.\n\r\n\rPurge with no arguments will remove all objects and mobiles from a\n\rroom, but not players.  You can purge players individually only.','2005-03-31 15:25:32','Commands',1),(101,'reboot,shutdown','Syntax: reboot [reason]\n\r        shutdown [reason]\n\r\n\rReboot will reboot the mud - deleting all mobiles and objects in rooms\n\rand resetting it as the mud comes back up.  Players will stay connected\n\rin a reboot and appear in the same room they were in.\n\r\n\rA shutdown will take the mud down completely, and will require a manual\n\rstartup.','2005-03-31 15:28:17','Commands',1),(103,'snoop','Syntax: snoop <player>\n\r\n\rSnoop lets you see what a player sees.','2005-03-31 16:26:30','Commands',1),(104,'transfer','Syntax: transfer <object/creature>\n\r\n\rTransfer will bring either and object or a creature to you.\n\r\n\rTransferring an object will go through all creatures inventories and\n\rall containers, and objects on the ground; but it will start with the\n\rroom you are in.','2005-03-31 16:34:00','Commands',1),(105,'goto','Syntax: goto <creature/object>\n\r        goto <vnum>\n\r\n\rGoto places you in the room of creature or object.\n\r\n\rGoing to an object will work only with objects in a room; not in a \n\rcreature\'s inventory, etc.\n\r\n\rGoing to a vnum only works for rooms.','2005-03-31 16:35:23','Commands',1),(106,'load','Syntax: load <object/crit> <vnum>\n\r        load <object by name/crit by name>\n\r\n\rThis command will load objects or creatures.  The objects will be \n\rplaced in your inventory if possible.\n\r\n\rYou can try to load objects and creatures by name, as well.','2005-03-31 16:45:14','Commands',1),(107,'stat','Syntax: stat <obj/here>\n\r        stat <room/obj/crit> <vnum>\n\r        stat world\n\r        stat active\n\r\n\rStat will bring up the edit sheet for the object you specify.  This\n\rwill allow you to see all the variables for said object.\n\r\n\rStat world will show various statistics about the mud.\n\r\n\rStat active will list the names of active players, in the order they\n\rlast logged in.','2005-03-31 16:47:12','Commands',1),(108,'repeat','Syntax: repeat <#> <command & arguments>\n\r\n\rRepeat will repeat the command and arguments you type in by the # of\n\rtimes you specify.','2005-03-31 16:48:22','Commands',1),(109,'users','Syntax: users\n\r        users all\n\r\n\rThe users command will show you the IP and hostname of all the players\n\ron the mud.\n\r\n\rHowever, the hostname is NOT updated unless the players IP changes,\n\rthe mud has rebooted with the player online, or you specify the \n\rargument all.  In most cases, the hostname is correct, but if you\n\rwish to be sure, use users all.\n\r\n\rThis command will also show the most recent connection attempts by IP.','2005-03-31 16:50:49','Commands',1),(110,'findvnum','Syntax: vnum <keywords>\n\r\n\rThe vnum command will search all creatures and objects by the keywords\n\ryou specify.\n\r\n\rIf you specify sword cow it will show all creatures and objects that\n\rhave EITHER keyword as one of their keywords.','2005-04-24 19:00:49','Commands',1),(111,'give','Syntax: give <object> <creature>\n\r        give <# coins> <cointype> <creature>\n\r\n\rGive lets you give objects or coins to another creature.','2005-03-31 21:05:17','Commands',0),(113,'olc_crit_wear','This is a STRING SEQUENCE variable. (help string sequence)\n\r\n\rThese are the wear slots of a creature.  If a creature has a body wear slot\n\rand picks up an object (such as a shirt) with a body wear type, then he will\n\rbe able to wear the shirt. \n\r\n\rIf you want to have multiple wear slots with the same name (such as 2 finger\n\rwear slots) then add it twice.','2005-04-03 18:03:29','OLC',1),(114,'string sequence','A STRING SEQUENCE variable is a special type of string for OLC.\n\r\n\rIt is a sequence of strings separated by a delimeter, or a set.\n\r\n\rFor example, if you have a string sequence with the value of sword and you\n\rtype: (name of variable) axe\n\rIt will change the value to sword, axe\n\r\n\rIf you want to REMOVE a string from the sequence, you would type:\n\r(name of variable) axe remove\n\r','2005-04-03 18:06:33','OLC',1),(115,'olc_crit_dexterity,olc_crit_strength,olc_crit_intelligence','These are stats for the creature.\n\rThey do nothing in the current implementation of the mud -- implementors should\n\rupdate this help file when they do stuff with stats.','2005-04-03 18:08:01','OLC',1),(116,'olc_crit_alignment','Alignment is typically a value from -1000 to 1000.  Although in the current\n\rimplementation of the mud, it does nothing.','2005-04-03 18:08:37','OLC',1),(117,'olc_crit_hp,olc_crit_movement','Hp/hitpoints are used to determine the life force of a creature.  If this value\n\rgets below 0, he or she becomes incapacitated.\n\r\n\rMovement points determine how far a character can move before he tires and has\n\rto rest.','2005-04-03 18:10:17','OLC',1),(118,'olc_crit_sex','Sex determines if the character is male or female.\n\r\n\rYou can type this variable by itself to see available types.','2005-04-03 18:13:28','OLC',1),(119,'olc_crit_position,olc_crit_state','Position of a character is whether he is sitting, standing, or lying down.\n\r\n\rState of a character tells whether he is awake, sleeping, unconscious, etc.\n\r\n\rYou can type either of these variables by themselves to see available types.','2005-04-03 18:14:45','OLC',1),(120,'olc_crit_flags','Flags allow the character to do or be affected by various things:\n\r\n\rMount: Character can be mounted (such as a horse).\n\rBanker: Character is a banker.','2005-04-03 18:17:04','OLC',1),(121,'olc_obj_objtype','This is the type of object - weapon, armor, etc.\n\r\n\rYou can type this variable by itself to see available types.','2005-04-03 18:20:43','OLC',1),(122,'olc_obj_timer','If you give an object a timer, it will self destruct in the amount of time\n\r(in seconds) that you specify.','2005-04-03 18:22:27','OLC',1),(123,'olc_obj_weight','\n\rHow much does the object weight (in pounds/lbs)?  This can be a decimal point.\n\r\n\rThe number you put in is actually 1/100th.  If you want something to weigh 1\n\rpound, put in 100, and so on.','2005-04-03 18:52:01','OLC',1),(124,'olc_obj_worth','This is how much the object is worth, in coins.  You cannot put in things like\n\r5 gold.  You have to know the actual worth of the coins in the code, but\n\ryou can simply experiment by putting in numbers, and it will display to you\n\r(in coins) what the object is worth.  So if you put in 55, it will show you\n\rit is worth 5 silver and 5 copper.','2005-04-03 18:54:49','OLC',1),(125,'olc_obj_coins','This is how many coins of this cointype are part of the actual object.\n\r\n\rIf this value is 10 and the cointype is gold and someone picks up this\n\robject, they will get 10 gold coins.','2005-04-03 19:00:00','OLC',1),(126,'olc_obj_maxweight','This is the maximum weight the container can hold (in lbs/pounds).  \n\rDecimals are not allowed.','2005-04-03 19:00:48','OLC',1),(127,'olc_obj_cointype','This is the type of coin the object is.\n\r\n\rYou can type this variable by itself to see available types.','2005-04-03 19:01:56','OLC',1),(128,'olc_obj_absorbtion','This is how much damage the armor absorbs.','2005-04-03 19:02:36','OLC',1),(129,'olc_obj_mindamage,olc_obj_maxdamage','This is the minimum and maximum damage the weapon can do.','2005-04-03 19:02:58','OLC',1),(130,'olc_obj_uses','This value determines how many times the object may be used before it\n\rdissapears/self-destructs.','2005-04-03 19:04:05','OLC',1),(131,'olc_obj_brightness','This is how bright the object is.  Generally, a brightness of 1 is enough to\n\rlight up a room.','2005-04-03 19:04:48','OLC',1),(132,'olc_obj_duration','Duration is how long the object will be usable while it is active.','2005-04-03 19:05:14','OLC',1),(133,'olc_room_light','If a room has 0 light, a player wont be able to see in that room without the\n\raid of external light.','2005-04-03 19:10:30','OLC',1),(134,'olc_room_roomtype','Is the room an air room, forest, dirt, city road, etc.\n\r\n\rYou can type this variable by itself to see available types.','2005-04-03 19:11:12','OLC',1),(135,'olc_social_notarget,olc_social_creature,olc_social_object,olc_social_self','No target is what will appear to you and the room by default.\n\r\n\rCreature is what will appear to the room if you specify a creature as an argument.\n\r\n\rObject is what will appear to the room if you specify an object as an argument.\n\r\n\rSelf is what will appear to the room if you specify yourself as an argument.\n\r\n\rSee: HELP MESSAGE for an explanation of the variables and how to use them.','2005-04-03 19:37:23','OLC',1),(136,'olc_help_keyword','This is a STRING SEQUENCE variable. (help string sequence)\n\r\n\rYou can add multiple keywords.  Keywords are what players type in to\n\rreference the help file.','2005-04-03 22:27:19','OLC',1),(137,'olc_help_index','Index is a sub-type or genre of the help file.\n\rOLC is the index used for this help file, as well as any other help file \n\rrelated to the mud\'s OLC.\n\r\n\rCommands is an index used for the commands of the mud.','2005-04-03 22:29:29','OLC',1),(138,'olc_help_level','This is the level required by the player to reference the help file.','2005-04-03 22:29:49','OLC',1),(139,'olc_help_text','This is what the help file contains!','2005-04-03 22:30:07','OLC',1),(140,'olc_note_to','This is who the note is to.  It can be to a specific player, or to \n\rimmortals, builders, implementors.','2005-04-03 23:43:46','OLC',1),(141,'olc_note_subject','This is the subject of the note.  This is what the players will see when\n\rthey type note list.','2005-04-03 23:44:11','OLC',1),(142,'olc_note_text','This is the text of the note, the body!','2005-04-03 23:44:30','OLC',1),(143,'olc_area_builders','This is a STRING SEQUENCE type variable (help string sequence).\n\r\n\rThe builders of an area are all able to change the various objects within.','2005-04-03 23:51:56','OLC',1),(144,'olc_area_low,olc_area_high','This sets the vnums of the area.\n\r\n\rLow is the starting vnum and High is the ending vnum.','2005-04-03 23:55:14','OLC',1),(145,'olc_ban_name','This is the name of the player you are banning.','2005-04-04 19:15:51','OLC',1),(146,'olc_ban_ip','This is the IP address of the player you are banning.\n\r\n\rWildcards are allowed, ie: 128.28','2005-04-04 19:18:24','OLC',1),(147,'olc_ban_type','This is the type of ban you are creating.  You can ban players \n\rindividually or ban IP addresses.\n\r\n\rYou can type this variable alone to see the available types.','2005-04-04 19:17:02','OLC',1),(149,'olc_reset_inside','The \"Inside\" variable is if you want to reset this object inside a container.\n\r\n\rIf set to 1, the object will reset to the last container above it on the reset\n\rlist.','2005-04-24 20:40:24','OLC',1),(154,'bug,idea,typo','Syntax: bug <message>\n\r        idea <message>\n\r        typo <message>\n\r\n\rThese commands should be self-explanatory.  They submit\n\rinformation for imms to take a look at.  \n\r\n\rThey will automatically log what room you are in, so there\n\ris no need to specify that (as in the case of the typo command).\n\rHowever, if the typo is on an object or mob, you might want to\n\rspecify in that case.','2007-11-18 17:04:43','Commands',0),(153,'input','Syntax: input <type: bug/typo/idea>\n\r        input <type> <player name>\n\r        input <type> vnum <room vnum>\n\r        input <type> vnum <low vnum> <high vnum>\n\r        input <type> #\n\r        input #\n\r        input # done <solution>\n\r        input completed [limit]\n\r\n\rThis command will show the various player input commands.  You can choose\n\rto show the command by the player name, room vnums (useful for builders\n\rfixing typos in their area).  Next to each input you will see a # that\n\rrepresents the input\'s ID in the database, that is what the last syntax\n\r\"#\" is for, so you can continue on past that point.\n\r\n\rMarking an input as \"done\" will make it no longer show up.  A builder can\n\rmark inputs done for areas he has access to, but only imps can mark other\n\rinputs as done.','2007-11-18 21:09:55','Commands',2);
/*!40000 ALTER TABLE `help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `notenumber` int(11) DEFAULT '0',
  `sender` text,
  `subject` text,
  `written` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sent_to` text,
  `note` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (176,0,'Athanos','Welcome','2008-12-03 21:40:39','all','Welcome to Forgotten Legacy Mud.\n\r\n\rAlthough this mud is not open to the public yet,\n\rlook\n\rfree to explore and make any comments or suggestions.\n\r\n\rThis mud will be based on the Palladium Fantasy\n\rRole Playing game.  Not all of the rules will be\n\rused.  However, much of the mechanics are based\n\ron these rules.\n\r\n\rAs work continues, we will update help files and\n\rstart looking for builders to help flesh out the\n\rworld which we may adventure in.\n\r\n\rUntil then, we hope your visit is enjoyable and\n\rfun enough to return another time.\n\r\n\rThank You,\n\r\n\rAthanos (Imp and Coder)');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object`
--

DROP TABLE IF EXISTS `object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `keywords` text,
  `vnum` int(11) DEFAULT NULL,
  `prototype` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `in_obj` int(11) DEFAULT NULL,
  `nested` int(11) DEFAULT NULL,
  `worn` text,
  `loaded` text,
  `long_descr` text,
  `description` text,
  `wear` text,
  `objtype` int(11) DEFAULT NULL,
  `objvalues` text,
  `timer` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `worth` int(11) DEFAULT NULL,
  `flags` text,
  `extra` text,
  PRIMARY KEY (`ID`),
  KEY `owner` (`owner_id`),
  KEY `vnum` (`vnum`)
) ENGINE=MyISAM AUTO_INCREMENT=3634 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object`
--

LOCK TABLES `object` WRITE;
/*!40000 ALTER TABLE `object` DISABLE KEYS */;
INSERT INTO `object` VALUES (7,'a toothpick','toothpick',1,1,0,0,0,'','Borlak','A toothpick lies helplessly on the ground.','It\'s wooden!','held',0,'0|0',0,0,1,'0',''),(9,'coins','coins',3,1,0,0,0,'','Borlak Pip','coins','coins','',4,'0|1',0,5,0,'0',''),(10,'a hairball','hairball',2,1,0,0,0,'','Borlak','Someone\'s hairball is resting innocently on the ground.','Gross!','held',0,'0|0',30,1,0,'0',''),(11,'a basket','basket',4,1,0,0,0,'','Borlak Pip','A fruity basket is on the ground here.','It usually holds fruit!','held',3,'15|0',0,200,25,'0',''),(1749,'a corpse','corpse',5,1,0,0,0,'','Borlak Pip','A corpse rests on the ground here.','It\'s definitely dead.','',3,'15|0',600,10000,0,'0',''),(1766,'some sweat','sweat liquid',6,1,0,0,0,'','Borlak','Liquid of some kind rests on the ground.','It smells kind of funny!','',2,'0|0',10,0,0,'0',''),(2124,'a tshirt','tshirt shirt',8,1,0,0,0,'','Borlak Pip','A neat tshirt is on the ground.','You wear it.','bodyarms',5,'1|0',0,500,2,'0',''),(2107,'a toga','toga',7,1,0,0,0,'','Borlak','A toga rests here.','This is what the roman people wore, supposedly.','body',5,'0|0',0,500,100,'0',''),(2254,'a pair of blue jeans','pants jeans blue pair',9,1,0,0,0,'','Pip Borlak','A pair of blue jeans is lying here.','The best pair of blue jeans this side of the torso.','legs',5,'0|0',0,500,55,'0',''),(2521,'a sword','object sword',10,1,0,0,0,'','Borlak','A sword rests here.','It is meant to hurt things.','held',6,'1|10',0,1000,55,'0',NULL),(3633,'a toothpick','toothpick',1,0,100,0,0,'','','A toothpick lies helplessly on the ground.','It\'s wooden!','held',0,'0|0',0,0,1,'0',NULL);
/*!40000 ALTER TABLE `object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `host` text,
  `ip` text,
  `last_command` text,
  `last_online` int(11) DEFAULT NULL,
  `numlines` int(11) DEFAULT NULL,
  `password` text,
  `prompt` text,
  `title` text,
  `who_name` text,
  `online` int(11) DEFAULT NULL,
  `descriptor` int(11) DEFAULT NULL,
  `hrs` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `part_of_name` (`name`(6))
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (6,'host',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0),(12,'Athanos','','127.0.0.1','shutdown',1312922754,40,'Athh4pFr72YW2','Type [&+Whelp prompt&n] for prompt info> ','','',0,0,0),(18,'Testtwo','','127.0.0.1','quit',1313667382,40,'TeodKZ79cURpc','Type [&+Whelp prompt&n] for prompt info> ','','',0,-1,0),(17,'Test','','127.0.0.1','quit',1313610711,40,'TekCFZRQX.2Po','Type [&+Whelp prompt&n] for prompt info> ','','',0,0,0),(16,'Ryodan','','127.0.0.1','quit',1312896867,40,'Ry5gO5mQ3AOzU','Type [&+Whelp prompt&n] for prompt info> ','','',0,0,0);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_input`
--

DROP TABLE IF EXISTS `player_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_input` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `playerID` int(11) DEFAULT NULL,
  `name` text,
  `type` varchar(15) DEFAULT NULL,
  `room` int(11) DEFAULT NULL,
  `input` text,
  `solution` text,
  `done` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_input`
--

LOCK TABLES `player_input` WRITE;
/*!40000 ALTER TABLE `player_input` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reset`
--

DROP TABLE IF EXISTS `reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reset` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `chance` int(11) DEFAULT NULL,
  `inside` int(11) DEFAULT NULL,
  `nested` int(11) DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `roomvnum` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `loadtype` int(11) DEFAULT NULL,
  `vnum` int(11) DEFAULT NULL,
  `command` text,
  PRIMARY KEY (`ID`),
  KEY `roomvnum` (`roomvnum`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reset`
--

LOCK TABLES `reset` WRITE;
/*!40000 ALTER TABLE `reset` DISABLE KEYS */;
INSERT INTO `reset` VALUES (38,90,0,0,1,1,0,0,1,5,2,1,'');
/*!40000 ALTER TABLE `reset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `night_name` text,
  `loaded` text,
  `roomtype` int(11) DEFAULT NULL,
  `light` int(11) DEFAULT NULL,
  `vnum` int(11) DEFAULT NULL,
  `description` text,
  `night_description` text,
  `flags` text,
  `extra` text,
  PRIMARY KEY (`ID`),
  KEY `vnum` (`vnum`)
) ENGINE=MyISAM AUTO_INCREMENT=5931 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (5679,'A room','','Borlak',0,0,4,'A room description.','','0',''),(2212,'borlaK\'s room','','Borlak',0,0,2,'1\n\r2\n\r3','','0',''),(5677,'Default Room','','Borlak',4,0,1,'This is the best default room you\'ve ever seen.','','0',''),(2226,'jbee\'s pad','','Jbee Pip',5,2,12,'There is the faint smell of ozone in the air.  You look around, seeing varying\n\rbrands of beer bottles piled up next to a desk full of strange\n\requipment.  The walls are plastered with manga posters, and appear to\n\rhave been deposited there some time ago.','','0',''),(2223,'&+KPip\'s&n Room!','OMG','Pip Borlak',5,1,3,'It is so nice here you wish you could stay forever.','OMG ITS NIGHT','0',''),(5826,'A room','','',0,0,7,'A room description.','','0',''),(5681,'A room','','',0,0,6,'A room description.','','0',''),(5680,'A room','','',0,0,5,'A room description.','','0',''),(5828,'A room','','',0,0,8,'A room description.','','0',NULL),(5829,'A room','','',0,0,9,'A room description.','','0',NULL),(5830,'A room','','',0,0,10,'A room description.','','0',NULL),(5831,'A room','','',0,0,11,'A room description.','','0',NULL),(5832,'A room','','',0,0,13,'A room description.','','0',NULL),(5910,'A Small Bar','','Cyron',0,0,2990,'This bar has quite a nice feel, compared to the rest of the city. It\'s clean has real floors, and even a marble bar.','','0',NULL),(5925,'A room','','',0,0,14,'A room description.','','0',NULL),(5926,'A room','','',0,0,15,'A room description.','','0',NULL),(5927,'A room','','',0,0,16,'A room description.','','0',NULL),(5928,'A room','','',0,0,17,'A room description.','','0',NULL),(5929,'A room','','',0,0,18,'A room description.','','0',NULL),(5930,'A room','','',0,0,19,'A room description.','','0',NULL);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_exit`
--

DROP TABLE IF EXISTS `room_exit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_exit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `room` int(11) DEFAULT NULL,
  `door` int(11) DEFAULT NULL,
  `dkey` int(11) DEFAULT NULL,
  `to_vnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5409 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_exit`
--

LOCK TABLES `room_exit` WRITE;
/*!40000 ALTER TABLE `room_exit` DISABLE KEYS */;
INSERT INTO `room_exit` VALUES (4852,'west',2,0,0,1),(4853,'enter',2,0,0,3),(4920,'exit',5,0,0,1),(4919,'enter',1,0,0,5),(4918,'north',4,0,0,1),(4898,'north',5,0,0,4),(4899,'east',5,0,0,6),(4900,'west',6,0,0,5),(4901,'east',6,0,0,7),(4902,'west',7,0,0,6),(4903,'southeast',6,0,0,8),(4904,'northwest',8,0,0,6),(4905,'west',8,0,0,9),(4906,'east',9,0,0,8),(4915,'north',14,0,0,1),(4916,'south',1,0,0,4),(4913,'north',13,0,0,1),(4921,'east',1,0,0,6),(4922,'west',6,0,0,1),(5224,'west',5,0,0,7),(5225,'climb',7,0,0,5),(5226,'west',4,0,0,8),(5227,'reverse',8,0,0,4),(5228,'north',8,0,0,9),(5229,'south',9,0,0,8),(5230,'up',8,0,0,10),(5231,'down',10,0,0,8),(5232,'up',1,0,0,11),(5233,'down',11,0,0,1),(5234,'up',11,0,0,13),(5235,'down',13,0,0,11),(5359,'out',2990,0,0,2880),(5391,'southwest',1,0,0,2),(5392,'southeast',1,0,0,2),(5393,'northwest',1,0,0,2),(5394,'northeast',1,0,0,2),(5395,'west',1,0,0,2),(5396,'north',1,0,0,2),(5397,'down',1,0,0,14),(5398,'up',14,0,0,1),(5399,'down',14,0,0,15),(5400,'up',15,0,0,14),(5401,'down',15,0,0,16),(5402,'up',16,0,0,15),(5403,'south',2,0,0,17),(5404,'north',17,0,0,2),(5405,'east',2,0,0,18),(5406,'west',18,0,0,2),(5407,'north',18,0,0,19),(5408,'south',19,0,0,18);
/*!40000 ALTER TABLE `room_exit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `keeper` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `buy` int(11) DEFAULT NULL,
  `sell` int(11) DEFAULT NULL,
  `open` int(11) DEFAULT NULL,
  `close` int(11) DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,1,0,100,100,0,0,5);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social`
--

DROP TABLE IF EXISTS `social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `no_target` text,
  `crit_target` text,
  `object_target` text,
  `self_target` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social`
--

LOCK TABLES `social` WRITE;
/*!40000 ALTER TABLE `social` DISABLE KEYS */;
INSERT INTO `social` VALUES (1,'laugh','$n laugh$x.','$n laugh$x at $N.','$n laugh$x at $N, hmmm...','$n laugh$x at $mself, okay?'),(2,'snicker','$n snicker$x.','$n snicker$x with $N about $t shared secret.','$n snicker$x at $N, what a piece of junk.','$n snicker$x at $mself, ohhhhhh yeah.'),(3,'sniff','$n sniff$x sadly.','$n sniff$x sadly at the way $N treat$x $m.','$n sniff$x $N for bugs.','$n sniff$x $t panties.'),(4,'nod','$n nod$x.','$n nod$x at $N.','$n nod$x at $N.','$n nod$x at $mself.'),(13,'nog','$n nog$x.','$n nog$x at $N.','$n nog$x at $N (even though it can\'t see it.)','$n nog$x at $mself.'),(14,'cackle','$n throw$x back $s head and cackle$x with glee!','$z eyes grow wide and wild as $e cackle$x at $N.','$n hold$x $N up in the air and cackle$x madly at it.','$n $v a very serious look on $s face as $e begin$x cackling madly for no reason.'),(6,'grin','$n grin$x.','$n grin$x at $N.','$n grin$x sardonically at $N.','$n grin$x evilly to $mself.'),(7,'snort','$n snort$x.','$n snort$x at $N, $e $r so foolish!','$n snort$x at $N.','$n laugh$x so hard $e snort$x!'),(9,'boggle','$n boggle$x at the concept.','$n boggle$x $s eye$x at $N.','$z eyes almost pop out of $s head when $e see$x $N.','$n $r boggled at $s own existence.'),(10,'chuckle','$n chuckle$x.','$n chuckle$x at $N.','$n chuckle$x at $N, what a silly thing!','$n chuckle$x at $mself, how manly!'),(11,'fart','$n &+gfart$x&N.','$n &+gfart$x&N on $N!','$n press$X $N against $s butt and &+gfart$x&N on it!','$n let$x out loud, obnoxious farts, while grinning wildly.'),(15,'lick','$n lick$x $s lips and smile$x.','$n lick$x $N.','$n lick$x $N... GROSS!!','...slurp...slurp...slurp...what the hell $r $n doing?'),(16,'sneeze','$n sneeze$x loudly.','$n sneeze$x all over $N!','$n sneeze$x on $N.','$n almost get$x blasted by $s own snot!'),(17,'shrug','$n shrug$x.','$n shrug$x in response to $Z question.','$n shrug$x at $N.','$n shrug at $mself until $s shoulders fall off.'),(18,'smile','$n smile$x.','$n smile$x happily at $N.','$n smile$x at $N.','$n smile$x stupidly at $mself.'),(19,'clap','$n clap$x in approval.','$n clap$x $s hands in approval of $Z actions.','$n clap$x $N.','$n clap$x for $mself!'),(20,'bonk','$n bonk$x.','$n bonk$x $N on the head for being such a moron.','$n bonk$x $s head on $N.','$n start$x bonking $mself on the head.'),(21,'hump','$n get$x a desperate look on $s face.','$n hump$x $Z leg.','$n start$x to hump $N... uNF Unf!','$n goe$X into the corner and hump$x off.'),(22,'grumble','$n grumble$x.','$n grumble$x at $N, what did $E do now?','$n grumble$x at $N, broken again!','$n grumble$x at $s own stupid actions.'),(23,'giggle','$n giggle$x.','$n giggle$x at $N\'s actions.','$n giggle$x at $N.','$n giggle$x at $mself.'),(36,'cheer','$n cheer$x wildly!','$n cheer$x $N on!','$n start$x cheering while waving $N around.','$n cheer$x for $mself!'),(25,'facehump','$n get$x a desperate look on $s face.','$Z facial features become unrecognizable as $n hump$x $S face.','$n start$x to hump $N in a facial looking orifice... uNF unF!','$n go$b into the corner and tr$y to hump $s own face.'),(26,'slap','$n look$x for a target to slap.','$n slap$x $N!','$n get$x ready to smack someone with $N.','$n slap$x $mself.'),(27,'wave','$n wave$x.','$n wave$x to $N.','$n wave$x with $N.','$n wave$x goodbye to $mself.'),(28,'shake','$n shake$x $s head.','$n shake$x $s head at $N.','$n pick$x up $N and shake$x $s head in disapointment.','$n shake$x $s head in disbelief.'),(29,'doh','$n smack$x $s head and yell$x \'Doh!!\'','$n tell$x $N that $E say$X \'doh!\' too often.','$n smack$x $s head with $N and yell$x \'Doh!!\'','$n $r slain by Homer Simpson.'),(30,'poke','$n $v a finger and $e $r ready to use it.','$n poke$x $N in the ribs.','$n poke$x $N a few times, is it alive?','$n poke$x $mself in the eye, ouch!'),(31,'peer','$n peer$x intently around the room.','$n peer$x at $N suspiciously.','$n wonder$x what $N is thinking.','*** $n $v quit IRC (Connection reset by peer)'),(32,'whap','$n $v a crazed look in $s eyes.','$n whap$x $N upside the head!','$n get$x ready to whap someone with $N.','$n whap$x $mself on the head for being such an idiot!'),(35,'bow','$n bow$x.','$n bow$x to $N.','$n do$b some flowery crap with $N as $e bow$x.','$n bow$x deeply.'),(33,'point','$n point$x $s finger in the air.','$n point$x $s finger at $N.','$n point$x an accusing finger at $N, what did it do now?','$n pull$x out a magic wand and point$x it at $s nose and say$x \'Hocus Pocus\'.'),(34,'hug','$n need$x a hug.','$n give$x $N a hug.','$n hug$x $N tightly.','$n give$x $mself a hug since nobody else will.'),(37,'yawn','$n open$x $s stinking mouth to release a godawful sound.','$n yawn$x annoyingly at $N.','$n take$x one look at $N and begin$x to yawn.','$n yawn$x at $mself, looking terminally bored.'),(41,'frown','$n frowns deeply$x.','$n frown$x deeply at $N.','$n frown$x deeply at $N','You frown at what you did.'),(42,'hmm','$n $g \'Hmmmmmmm.\'','$n look$x at $N and $g \'Hmmmmmmmm...\'','$n $g \'Hmmmmmmm\' at $p.','hmmmmmm....just WHAT $r $n thinking?'),(39,'sigh','$n sigh$x heavily.','$n sigh$x at $N, lost in $S eyes.','$n sigh$x at $N, BAD BAD $N!!','$n sigh$x a heavy sigh at $s own sillyness.'),(40,'tickle','$z hands get tingly with tickle juice.','$n reach$b out and tickle$x $N, heehee!','As $n think$x about $N, $e get$x tickled inside.','$n can\'t stop tickling $mself!'),(43,'whine','$e wines.','$n wines to $N.','','$n wines alone.'),(45,'smoke','$n smoke$x alone.','$n smoke$x with $N.','$n smokes from $p.','$n smoke$x, but $d inhale.'),(46,'thank','$n gives thanks.','$n thank$x $N','$n is thankful for $p','$n is thankful'),(47,'worship','$n get\'s on thier knees and worships PiP and Borlak the Creators.','$n turn$x $s back on the gods and worship$x $N.','$n worship$x $p.','\'I am my own &+YGOD&N.'),(48,'tap','You tap your foot','$n tap$x $s foot at $N.','$n tap$x $s foot at $P.','$n tap$x $s nose.');
/*!40000 ALTER TABLE `social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `mudstatus` int(11) DEFAULT NULL,
  `backup` int(11) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `hour` int(11) DEFAULT NULL,
  `minute` int(11) DEFAULT NULL,
  `second` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time`
--

LOCK TABLES `time` WRITE;
/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` VALUES (1,1199,0,0,1036438052,1036439262,1,0,0,19,59,0),(2,1318,0,0,1036441969,1036442091,1,0,0,21,58,0),(3,1377,0,0,1036443552,1036443552,1,0,0,22,57,0),(4,1496,0,0,1036444106,1036444229,1,0,1,0,56,0),(5,2755,0,0,1036449465,1036450734,1,0,1,21,55,0),(6,2874,0,0,1036453138,1036453259,1,0,1,23,54,0),(7,2933,0,0,1036453395,1036453395,1,0,2,0,53,0),(8,8512,0,0,1036455265,1036460886,1,1,2,21,52,0),(9,8571,0,0,1036515788,1036515788,1,1,2,22,51,0),(10,20630,0,0,1036548093,1036560253,1,4,2,7,50,0),(11,20749,0,0,1036560271,1036560393,1,4,2,9,49,0),(12,21288,0,0,1036560451,1036560995,1,4,2,18,48,0),(13,21347,0,0,1036561075,1036561075,1,4,2,19,47,0),(14,21406,0,0,1036561189,1036561189,1,4,2,20,46,0),(15,21645,0,0,1036561291,1036561534,1,5,0,0,45,0),(16,21704,0,0,1036561682,1036561682,1,5,0,1,44,0),(17,21883,0,0,1036561733,1036561916,1,5,0,4,43,0),(18,53442,0,0,1036562058,1036593845,2,5,1,2,42,0),(19,53921,0,0,1036622153,1036622637,2,5,1,10,41,0),(20,54160,0,0,1036622673,1036622916,2,5,1,14,40,0),(21,54279,0,0,1036622962,1036623083,2,5,1,16,39,0),(22,54398,0,0,1036623156,1036623278,2,5,1,18,38,0),(23,54457,0,0,1036623393,1036623393,2,5,1,19,37,0),(24,54516,0,0,1036623460,1036623460,2,5,1,20,36,0),(25,54575,0,0,1036626795,1036626795,2,5,1,21,35,0),(26,54694,0,0,1036626997,1036627118,2,5,1,23,34,0),(27,54753,0,0,1036627233,1036627233,2,5,2,0,33,0),(28,55232,0,0,1036627272,1036627756,2,5,2,8,32,0),(29,55651,0,0,1036627761,1036628187,2,5,2,15,31,0),(30,55710,0,0,1036628116,1036628298,2,5,2,16,30,0),(31,55769,0,0,1036628482,1036628482,2,5,2,17,29,0),(32,55948,0,0,1036628531,1036628713,2,5,2,20,28,0),(33,56127,0,0,1036628774,1036628956,2,5,2,23,27,0),(34,56366,0,0,1036628998,1036629240,2,6,0,3,26,0),(35,145225,0,0,1036629277,1036718798,5,5,1,20,25,0),(36,145344,0,0,1036769997,1036770118,5,5,1,22,24,0),(37,145943,0,0,1036776634,1036777239,5,5,2,8,23,0),(38,146062,0,0,1036777244,1036777366,5,5,2,10,22,0),(39,148521,0,0,1036809432,1036811912,5,6,1,3,21,0),(40,148580,0,0,1036812074,1036812074,5,6,1,4,20,0),(41,148939,0,0,1036812108,1036812471,5,6,1,10,19,0),(42,197538,0,0,1036812576,1036861530,7,3,2,4,18,0),(43,197597,0,0,1036867249,1036867249,7,3,2,5,17,0),(44,206596,0,0,1036870297,1036879361,7,5,2,11,16,0),(45,206655,0,0,1036880062,1036880062,7,5,2,12,15,0),(46,206714,0,0,1036880405,1036880405,1,4,27,13,14,0),(47,208453,0,0,1037030228,1037031981,1,4,28,18,13,0),(48,208512,0,0,1037034824,1037034824,1,4,28,19,12,0),(49,208691,0,0,1037076631,1037076813,1,4,28,22,11,0),(50,240370,0,0,1037076865,1037108766,1,5,21,22,10,0),(51,249549,0,0,1037236852,1037246096,1,5,28,7,9,0),(52,249608,0,0,1037402175,1037402175,1,5,28,8,8,0),(53,250087,0,0,1037402233,1037402717,1,5,28,16,7,0),(54,251586,0,0,1037402734,1037404246,1,6,0,17,6,0),(55,253805,0,0,1037404256,1037406492,1,6,2,6,5,0),(56,253924,0,0,1037406680,1037406801,1,6,2,8,4,0),(57,268443,0,0,1037406864,1037421486,1,6,12,10,3,0),(58,268562,0,0,1037421508,1037421630,1,6,12,12,2,0),(59,270001,0,0,1037422295,1037423746,1,6,13,12,1,0),(60,270060,0,0,1037423826,1037423826,1,6,13,13,0,0),(61,270119,0,0,1037423920,1037423920,1,6,13,13,59,0),(62,270598,0,0,1037423952,1037424436,1,6,13,21,58,0),(63,271017,0,0,1037424452,1037424877,1,6,14,4,57,0),(64,303716,0,0,1037424988,1037457918,1,7,7,21,56,0),(65,304735,0,0,1037457963,1037458991,1,7,8,14,55,0),(66,304794,0,0,1037459088,1037459088,1,7,8,15,54,0),(67,305033,0,0,1037469252,1037469495,1,7,8,19,53,0),(68,305092,0,0,1037474453,1037474453,1,7,8,20,52,0),(69,306831,0,0,1037486211,1037487964,1,7,10,1,51,0),(70,307430,0,0,1037553109,1037553714,1,7,10,11,50,0),(71,308389,0,0,1037553753,1037554720,1,7,11,3,49,0),(72,308928,0,0,1037554780,1037555324,1,7,11,12,48,0),(73,309167,0,0,1037555353,1037555596,1,7,11,16,47,0),(74,310426,0,0,1037555638,1037556917,1,7,12,13,46,0),(75,323625,0,0,1037556951,1037570249,1,7,21,17,45,0),(76,323744,0,0,1037570884,1037571006,1,7,21,19,44,0),(77,323923,0,0,1037571152,1037571334,1,7,21,22,43,0),(78,324702,0,0,1037571422,1037572209,1,7,22,11,42,0),(79,325121,0,0,1037572213,1037572637,1,7,22,18,41,0),(80,325300,0,0,1037572678,1037572860,1,7,22,21,40,0),(81,325479,0,0,1037572902,1037573086,1,7,23,0,39,0),(82,325538,0,0,1037573219,1037573219,1,7,23,1,38,0),(83,325657,0,0,1037573803,1037573925,1,7,23,3,37,0),(84,325896,0,0,1037574851,1037575093,1,7,23,7,36,0),(85,325955,0,0,1037575177,1037575177,1,7,23,8,35,0),(86,326134,0,0,1037575215,1037575397,1,7,23,11,34,0),(87,326373,0,0,1037575808,1037576051,1,7,23,15,33,0),(88,326552,0,0,1037576066,1037576248,1,7,23,18,32,0),(89,326611,0,0,1037576357,1037576357,1,7,23,19,31,0),(90,326850,0,0,1037576492,1037576735,1,7,23,23,30,0),(91,328409,0,0,1037576772,1037578344,1,7,25,1,29,0),(92,328468,0,0,1037578424,1037578424,1,7,25,2,28,0),(93,329367,0,0,1037578476,1037579383,1,7,25,17,27,0),(94,329726,0,0,1037579412,1037579776,1,7,25,23,26,0),(95,329785,0,0,1037579848,1037579848,1,7,26,0,25,0),(96,336684,0,0,1037579928,1037586878,1,8,1,19,24,0),(97,344723,0,0,1037587591,1037595689,1,8,7,9,23,0),(98,344782,0,0,1037659752,1037659752,1,8,7,10,22,0),(99,352041,0,0,1037712349,1037719665,1,8,12,11,21,0),(100,363800,0,0,1037745081,1037756926,1,8,20,15,20,0),(101,363979,0,0,1037757168,1037757351,1,8,20,18,19,0),(102,396678,0,0,1037766223,1037799156,1,9,14,11,18,0),(103,403457,0,0,1037799370,1037806198,1,9,19,4,17,0),(104,403516,0,0,1037807065,1037807065,1,9,19,5,16,0),(105,403635,0,0,1037825735,1037825856,1,9,19,7,15,0),(106,403754,0,0,1037831789,1037831910,1,9,19,9,14,0),(107,404113,0,0,1037857182,1037857545,1,9,19,15,13,0),(108,404292,0,0,1037857687,1037857869,1,9,19,18,12,0),(109,404411,0,0,1037858474,1037858596,1,9,19,20,11,0),(110,436990,0,0,1037858680,1037891489,1,10,13,11,10,0),(111,437949,0,0,1037894747,1037895714,1,10,14,3,9,0),(112,438008,0,0,1037897201,1037897201,1,10,14,4,8,0),(113,438127,0,0,1037900037,1037900158,1,10,14,6,7,0),(114,438246,0,0,1037918813,1037918935,1,10,14,8,6,0),(115,438725,0,0,1037918944,1037919428,1,10,14,16,5,0),(116,438844,0,0,1037919467,1037919589,1,10,14,18,4,0),(117,439563,0,0,1037919662,1037920390,1,10,15,6,3,0),(118,440282,0,0,1037920505,1037921233,1,10,15,18,2,0),(119,440341,0,0,1037921387,1037921387,1,10,15,19,1,0),(120,2134859,1,1044458244,1044521330,1044524349,5,3,3,12,59,0),(121,2194688,1,1044546331,1044524349,1044585237,5,4,16,2,8,0),(122,2194693,1,1044546331,1044585268,1044585268,5,4,16,2,13,0),(123,2194733,2,1044546331,1044585311,1044585311,5,4,16,2,53,0),(124,2203672,1,1044546331,1044585238,1044594382,5,4,22,7,52,0),(125,2203910,1,1044546331,1044594640,1044594640,5,4,22,11,50,0),(126,2204158,1,1044546331,1044595194,1044595194,5,4,22,15,58,0),(127,2207757,0,1044546331,1044595325,1044598990,5,4,25,3,57,0),(128,2209968,1,1044546331,1044599471,1044601725,5,4,26,16,48,0),(129,2212667,0,1044546331,1044601725,1044604473,5,4,28,13,47,0),(130,2215366,0,1044546331,1044605152,1044607900,5,5,1,10,46,0),(131,2215486,2,1044546331,1044611187,1044611187,5,5,1,12,46,0),(132,2215781,1,1044546331,1044611568,1044611568,5,5,1,17,41,0),(133,2215900,1,1044546331,1044611691,1044611691,5,5,1,19,40,0),(134,2216471,1,1044546331,1044612274,1044612274,5,5,2,5,11,0),(135,2216522,2,1044546331,1044612381,1044612381,5,5,2,6,2,0),(136,2217258,1,1044546331,1044613140,1044613140,5,5,2,18,18,0),(137,2217504,1,1044546331,1044612386,1044613386,5,5,2,22,24,0),(138,2217450,2,1044546331,1044613359,1044613359,5,5,2,21,30,0),(139,2217454,2,1044546331,1044614031,1044614031,5,5,2,21,34,0),(140,2218377,1,1044546331,1044613387,1044614331,5,5,3,12,57,0),(141,2217578,2,1044546331,1044614342,1044614342,5,5,2,23,38,0),(142,2217600,2,1044546331,1044615196,1044615196,5,5,3,0,0,0),(143,2219337,1,1044546331,1044614332,1044615310,5,5,4,4,57,0),(144,2217620,2,1044546331,1044615261,1044615261,5,5,3,0,20,0),(145,2220319,0,1044546331,1044615310,1044618059,5,5,4,21,19,0),(146,2223918,0,1044546331,1044618599,1044622263,5,5,7,9,18,0),(147,2232917,0,1044546331,1044622266,1044631426,5,5,13,15,17,0),(148,2235871,1,1044633159,1044633159,1044636167,5,5,15,16,31,0),(149,2233899,2,1044633159,1044634436,1044634436,5,5,14,7,39,0),(150,2234022,1,1044633159,1044634668,1044634668,5,5,14,9,42,0),(151,2234092,1,1044633159,1044634743,1044634743,5,5,14,10,52,0),(152,2234300,1,1044633159,1044634958,1044634958,5,5,14,14,20,0),(153,2234793,1,1044633159,1044635468,1044635468,5,5,14,22,33,0),(154,2234837,1,1044633159,1044635516,1044635516,5,5,14,23,17,0),(155,2234983,1,1044633159,1044635668,1044635668,5,5,15,1,43,0),(156,2235180,1,1044633159,1044635870,1044635870,5,5,15,5,0,0),(157,2235205,1,1044633159,1044635898,1044635898,5,5,15,5,25,0),(158,2235431,1,1044633159,1044636130,1044636130,5,5,15,9,11,0),(159,2237230,0,1044633159,1044636130,1044637963,5,5,16,15,10,0),(160,2237230,0,1044633159,1044636167,1044638000,5,5,16,15,10,0),(161,2239029,0,1044633159,1044639516,1044641348,5,5,17,21,9,0),(162,2271428,0,1044633159,1044641349,1044674322,5,6,11,9,8,0),(163,2279527,0,1044633159,1044674323,1044682567,5,6,17,0,7,0),(164,2282226,0,1044633159,1044682617,1044685366,5,6,18,21,6,0),(165,2283452,1,1044633159,1044685367,1044686616,5,6,19,17,32,0),(166,2283278,1,1044633159,1044686501,1044686501,5,6,19,14,38,0),(167,2283339,2,1044633159,1044686569,1044686569,5,6,19,15,39,0),(168,2283444,1,1044633159,1044686724,1044686724,5,6,19,17,24,0),(169,2283467,1,1044633159,1044686749,1044686749,5,6,19,17,47,0),(170,2283489,1,1044633159,1044686772,1044686772,5,6,19,18,9,0),(171,2283519,1,1044633159,1044686804,1044686804,5,6,19,18,39,0),(172,2283711,1,1044633159,1044687001,1044687001,5,6,19,21,51,0),(173,2283809,1,1044633159,1044687103,1044687103,5,6,19,23,29,0),(174,2284461,1,1044633159,1044687767,1044687767,5,6,20,10,21,0),(175,2287160,0,1044633159,1044687767,1044690516,5,6,22,7,20,0),(176,2288183,1,1044633159,1044690516,1044691559,5,6,23,0,23,0),(177,2288410,1,1044633159,1044691792,1044691792,5,6,23,4,10,0),(178,2289309,0,1044633159,1044692708,1044692708,5,6,23,19,9,0),(179,2290315,1,1044633159,1044692709,1044693734,5,6,24,11,55,0),(180,2290475,1,1044633159,1044693898,1044693898,5,6,24,14,35,0),(181,2290951,1,1044633159,1044694384,1044694384,5,6,24,22,31,0),(182,2292750,0,1044633159,1044694384,1044696216,5,6,26,4,30,0),(183,2294914,1,1044633159,1044696217,1044698420,5,6,27,16,34,0),(184,2295612,1,1044633159,1044699133,1044699133,5,6,28,4,12,0),(185,2296421,1,1044633159,1044699957,1044699957,5,6,28,17,41,0),(186,2296786,1,1044633159,1044700330,1044700330,5,6,28,23,46,0),(187,2296832,2,1044633159,1044700535,1044700535,5,7,0,0,32,0),(188,80932539,0,1313667305,1313667305,1313698850,162,6,1,3,39,0);
/*!40000 ALTER TABLE `time` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-08-23 11:56:56
