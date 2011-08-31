CC      = gcc
C_FLAGS = -O0 -g -Wall -Wno-missing-braces -g3 -ggdb3 $(PROF) $(NOCRYPT)
L_FLAGS = -L/usr/local/mysql/lib -lz -lmysqlclient
#	  -L/usr/local/lib -lz -lmysqlclient -ldefault
#	  -L/home/borlak/acm/lua/lib -llua -lz		\
#	  -L/home/borlak/acm/tolua/lib -ltolua -lz

O_FILES = \
	area.o		\
	cmdio.o		\
	command.o	\
	convert.o	\
	const.o		\
	creature.o	\
	editor.o	\
	flags.o		\
	info.o		\
	io.o		\
	main.o		\
	newdel.o	\
	object.o	\
	os.o		\
	search.o	\
	socket.o	\
	update.o	\
	util.o		\
	wizard.o	

mud: $(O_FILES)
	@echo "Making Forgotten Legacy Mud Executable"
	rm -f mud
	$(CC) -o mud $(O_FILES) $(L_FLAGS)
	@echo "To start Forgotten Legacy type './startup &'"

.c.o: stdh.h
	$(CC) -c $(C_FLAGS) $<

clean:
	touch *.[ch]
	make

rm:
	mv *.[ch] rm
	rm *.o *.dsp *.dsw

tar:
	rm ../legacy.tgz
	tar czhf ../legacy.tgz *.c *.h *.list *.txt Makefile startup



