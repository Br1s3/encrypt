CC = gcc
RM = rm -rf

NBO    = NB_OCTET=8
PUIENC = PUI_ENCRYPT=10
NBC    = NB_CLEF=100
# EPS    = EPSILON=0.75

SPEFLAGS += 	\
-D$(NBO) 	\
-D$(PUIENC)	\
-D$(NBC)	\
# -D$(EPS)


CFLAGS += \
-Wall \
-Wextra



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
