CC = gcc
RM = rm -rf

CFLAGS += \
-Wall \
-Wextra

.PHONY: all clean

all: encrypt decrypt


decrypt: decrypt.c libec.h
	$(CC) $< -o $@ $(CFLAGS)

encrypt: encrypt.c libec.h
	$(CC) $< -o $@ $(CFLAGS)


clean:
	$(RM) encrypt
	$(RM) decrypt
