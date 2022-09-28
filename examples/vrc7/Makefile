include ../../toolchain.mk

.PHONY: clean 
.PRECIOUS: *.o

SRCS=../../chars.c
OBJS=$(SRCS:.c=.o)
ASMS=$(SRCS:.c=.s)

MAPPER=../../mappers/vrc7
MMC5=../../mappers/mmc5

hello.nes: hello.o no_music.o $(OBJS)
	ld65 -C $(MAPPER)/nes.cfg -vm --mapfile hello.map -o $@ \
		hello.o no_music.o $(OBJS) \
		$(MAPPER)/libinit.a \
		../../util/libutil.a \
		$(NESLIB)

do_nothing.nes: do_nothing.o no_music.o $(OBJS)
	ld65 -C $(MAPPER)/nes.cfg -vm --mapfile do_nothing.map -o $@ \
		do_nothing.o no_music.o $(OBJS) \
		$(MAPPER)/libinit.a \
		../../util/libutil.a \
		$(NESLIB)

cftest_vrc7.nes: cftest.o cfplayer.o cfthunk.o z2_test.o cf_sfx.o $(OBJS)
	ld65 -C $(MAPPER)/nes.cfg -vm \
		--mapfile cftest_vrc7.map \
		-o $@ \
	    cfplayer.o \
	    cfthunk.o \
		cftest.o \
		z2_test.o \
		cf_sfx.o \
		$(OBJS) \
		$(MAPPER)/libinit.a \
		../../util/libutil.a \
		$(NESLIB)

cftest_mmc5_hdn.nes: cftest_mmc5_hdn.o cfplayer.o cfthunk.o z2_test.o cf_sfx.o $(OBJS)
	ld65 -C $(MMC5)/nes.cfg -vm \
		--mapfile cftest_mmc5_hdn.map \
		-o $@ \
	    cfplayer.o \
	    cfthunk.o \
		cftest_mmc5_hdn.o \
		z2_test.o \
		cf_sfx.o \
		$(OBJS) \
		$(MMC5)/libinit.a \
		../../util/libutil.a \
		$(NESLIB)

%.o: %.c
	$(CC) -I../.. -Oi $< --add-source
	$(AS) $*.s

%.o: %.S
	$(AS) $*.S

clean:
	@rm -fv $(OBJS) $(ASMS) *.nes *.map
