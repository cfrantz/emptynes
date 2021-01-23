include ../../toolchain.mk

.PHONY: clean 
.PRECIOUS: *.o

SRCS=../../chars.c
OBJS=$(SRCS:.c=.o)
ASMS=$(SRCS:.c=.s)

MAPPER=../../mappers/vrc6

hello.nes: hello.o music.o z2.o $(OBJS)
	ld65 -C $(MAPPER)/nes.cfg -vm --mapfile hello.map -o $@ \
		hello.o $(OBJS) \
		music.o z2.o \
		$(MAPPER)/libinit.a \
		../../util/libutil.a \
		$(NESLIB)

vrc6_audio_check.nes: vrc6_audio_check.o $(OBJS)
	ld65 -C $(MAPPER)/nes.cfg -vm --mapfile vrc6_audio_check.map -o $@ \
		vrc6_audio_check.o $(OBJS) \
		$(MAPPER)/libinit.a \
		../../util/libutil.a \
		$(NESLIB)

%.o: %.c
	$(CC) -I../.. -Oi $< --add-source
	$(AS) $*.s

%.o: %.S
	$(AS) $*.S

clean:
	@rm -fv $(OBJS) $(ASMS) *.nes *.map \
		vrc6_audio_check.o vrc6_audio_check.s 
