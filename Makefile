CC = gcc
RM = rm -rf

CFLAGS += \
-Wall \
-Wextra


NBO      = NB_BYTES=4
REDBYTES = REDUNDANT_BYTES=8
NBK      = NB_KEY=15
SKEY     = SEEDKEY=\"Toy-case-exempl\"
# EPS    = EPSILON=0.75

SPEFLAGS += 	\
-D$(NBO) 	\
-D$(REDBYTES)	\
-D$(NBK)	\
-D$(SKEY)
# -D$(EPS)


.PHONY: all clean

all: encrypt decrypt


decrypt: decrypt.c libec.h
	$(CC) $< -o $@ -DPROG1 $(SPEFLAGS) $(CFLAGS)

encrypt: encrypt.c libec.h
	$(CC) $< -o $@ -DPROG1 $(SPEFLAGS) $(CFLAGS)


clean:
	$(RM) encrypt
	$(RM) decrypt
	$(RM) libec

clean_all: clean
	$(RM) encrypt.c.crypted
	$(RM) decrypt.c.crypted
	$(RM) libec.h.crypted
