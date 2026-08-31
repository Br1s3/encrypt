CC = gcc
RM = rm -rf

CFLAGS += \
-Wall \
-Wextra

NBO      = NB_BYTES=4
REDBYTES = REDUNDANT_BYTES=8
NBK      = NB_KEY=15
# EPS    = EPSILON=0.75

SPEFLAGS += 	\
-D$(NBO) 	\
-D$(REDBYTES)	\
-D$(NBK)
# -D$(EPS)


.PHONY: all clean

all: encrypt decrypt


decrypt: decrypt.c
	$(CC) $< -o $@ $(SPEFLAGS) $(CFLAGS)

encrypt: encrypt.c
	$(CC) $< -o $@ $(SPEFLAGS) $(CFLAGS)

clean:
	$(RM) encrypt
	$(RM) decrypt
	$(RM) libec

clean_all: clean
	$(RM) *.crypted
