# This is a simple (or not) encryption and decryption programs


# Ready to start
```console
$ make all
```

## Best config:

- NB_OCTET   =2
- PUI_ENCRYPT=2
- NB_CLEF    =100

## Wrong configuration

- NB_OCTET   =1
- PUI_ENCRYPT=2
- NB_CLEF    =1

The number of bytes it's not enought to differentiate all the ASCII carracter stored

  
## To accept a certain wrong bit

Set this value as you want:

- EPSILON=0.75

It's a ratio like SNR



## results of increasing NB_OCTET 

start from 1 up to 8 wich represent a 64bit value

|  visual length   | nb bit |      decimal representation      |
|------------------|--------|----------------------------------|
| 28               | 8bit   | (0 -                        255) |
| 63d7             | 16bit  | (0 -                     65 535) |
| 2da435           | 24bit  | (0 -                 16 777 215) |
| 1f8fb78f         | 32bit  | (0 -              4 294 967 295) |
| 4855a7ebfd       | 40bit  | (0 -          1 099 511 627 775) |
| 4f554086a2b3     | 48bit  | (0 -        281 474 976 710 645) |
| 032006e3aad67f   | 56bit  | (0 -     72 057 594 037 927 936) |
| 3577179b3cb5a7ba | 64bit  | (0 - 18 446 744 073 709 551 616) |


# How to use it

```console
$ ./encrypt Hello world (press Crtl-D to escape)
$ > 7d bc a0 2f b8 f3 b7 f9 6a f0 51 dd ab 6e 8f f9 03 42 29 48 0a eb 00 96 04 a8 6f f2 73 6a 94 e3 ff 33 40 b7 27 f7 b0 91 e7 01 6e 92 70 fd 8c 73 3f b5 bb 49 a0 bc e0 a4 64 4f 96 d7 b9 2b ba b8 5e fb 70 85 f2 20 16 da 22 84 6c 92 81 f8 05 c0 ad c1 0a 4d 7d ea f2 e1 39 88 b8 f2 b3 73 aa 12 6e 1a 97 60 3b ae 3a 5d 32 a7 ef b4 9f f4 74 4d b5 7e 9a 32 68 8c 13 a1 15 cc 93 c8 3f 3e da ad 58 72 0d 93 20 48 f0 52 ef df 06 8e d4 7b db 89 f9 76 bc 62 02 cf 03 17 9b 97 e0 da d5 ba 87 2d 2c 95 c1 4c dd b1 9f cc 91 a5 5a 65 20 36 ee 1a ac aa 7c ae 7a 7f c6 15 16 a6 f0 eb 60 77 19 8d 0c da d9 e9 8b 78 b5 1c 1e 10 81 3e 46 70 58 f2 1a d4 a0 94 54 66 aa 6a 0c 9a 56 6d 11 6f fa 1e 49 d3 07 d4 4c bd f1 6a cd 72 a8 13 e2 01 05 fd d5 a5 91 29 0c 3b 94 18 d5 ea 85 e7 59 7f 05 a2 53 0c 76 9f c9 67 09 96 da b1 a9 bc b2 ae b9 88 54 4b b1 60 86 45 78 5c 2f fe 43 88 7d 48 2a d0 54 a1 6f 1e 08 78 b4 e2 2a 5e 9f dc 0c 58 64 60 a3 16 c0 2a 5b 39 86 8b 37 c9 13 b4 11 3e 85 65 df f4 83 e7 6d 38 ca 97 96 69 73 a2 c1 d8 03 65 ee c3 8f 49 fc 15 d4 33 de e8 e8 ef 26 6d 54 05 61 d8 ec ce 10 b6 65 a6 1f d9 48 e1 b1 4b 46 9f 0f d5 e8 0b ea bd 3f c8 a5 27 b7 cb 94 0b d0 f5 e3 bc c4 f3 73 29 99 92 02 e2 73 b3 2d b9 52 3c 8e 3b 48 78 f8 87 40 9d ae f7 68 42 03 38 37 e6 f4 fb da 67 25 73 fa 27 55 6d db 83 27 2d bf b5 68 07 2e 60 8e 6e fd 3c 66 65 7e 69 9d b6 4f 92 b1 29 f9 d6 9d f3 fe f2 61 d9 75 88 06 35 3d 6f 3c 6b cf cb da cd 07 40 32 86 a9 d0 3c f8 62 ed 22 5b c4 bf 4f c2 b1 b0 9b 27 38 a1 5c 75 10 98 e1 e0 63 bb ad 6b fb df f1 a4 af 2d 9c 11 1a be 6d de 7d bc 7f 73 f8 dd 6c d3 b1 40 7a 68 52 0f 7d bc a0 2f b8 f3 b7 f9 6a f0 51 dd ab 6e 8f f9 03 42 29 48 0a eb 00 96 04 a8 6f f2 73 6a 94 e3 ff 33 40 b7 27 f7 b0 91 e7 01 6e 92 70 fd 8c 73 3f b5 bb 49 a0 bc e0 a4 64 4f 96 d7 b9 2b ba b8 5e fb 70 85 f2 20 16 da 22 84 6c 92 81 f8 05 c0 ad c1 0a 4d 7d ea f2 e1 39 88 b8 f2 b3 73 aa 12 6e 1a 97 60 3b ae 3a 5d 32 a7 ef b4 9f f4 74 4d b5 7e 9a 32 68 8c 13 a1 15 cc 93 c8 3f 3e da ad 58 72 0d 93 20 48 f0 52 ef df 06 8e d4 7b db 89 f9 76 bc 62 02 cf 03 17 9b 97 e0 da d5 ba 87 2d 2c 95 c1 4c dd b1 9f cc 91 a5 5a 65 20 36 ee 1a ac aa 7c ae 7a 7f c6 15 16 a6 f0 eb 60 77 19 8d 0c da d9 e9 8b 78 b5 1c 1e 10 81 3e 46 70 58 f2 1a d4 a0 94 54 66 aa 6a 0c 9a 56 6d 11 6f fa 1e 49 d3 07 d4 4c bd f1 6a cd 72 a8 13 e2 01 05 fd d5 a5 91 29 0c 3b 94 18 d5 ea 85 e7 59 7f 05 a2 53 0c 76 9f c9 67 09 96 da b1 a9 bc b2 ae b9 88 54 4b b1 60 86 45 78 5c 2f fe 43 88 7d 48 2a d0 54 a1 6f 1e 08 78 b4 e2 2a 5e 9f dc 0c 58 64 60 a3 16 c0 2a 5b 39 86 8b 37 c9 13 b4 11 3e 85 65 df f4 83 e7 6d 38 ca 97 96 69 73 a2 c1 d8 03 65 ee c3 8f 49 fc 15 d4 33 de e8 e8 ef 26 6d 54 05 61 d8 ec ce 10 b6 65 a6 1f d9 48 e1 b1 4b 46 9f 0f d5 e8 0b ea bd 3f c8 a5 27 b7 cb 94 0b d0 f5 e3 bc c4 f3 73 29 99 92 02 e2 73 b3 2d b9 52 3c 8e 3b 48 78 f8 87 40 9d ae f7 68 42 03 38 37 e6 f4 fb da 67 25 73 fa 27 55 6d db 83 27 2d bf b5 68 07 2e 60 8e 6e fd 3c 66 65 7e 69 9d b6 4f 92 b1 29 f9 d6 9d f3 fe f2 61 d9 75 88 06 35 3d 6f 3c 6b cf cb da cd 07 40 32 86 a9 d0 3c f8 62 ed 22 5b c4 bf 4f c2 b1 b0 9b 27 38 a1 5c 75 10 98 e1 e0 63 bb ad 6b fb df f1 a4 af 2d 9c 11 1a be 6d de 7d bc ec 95 a7 fb b0 ce b1 40 3b cc 52 0f
$ decrypt (All the mess and press Crtl-D)
$ > Hello world
```

This is done this type of parameter:
- NBO    = NB_OCTET=1
- PUIENC = PUI_ENCRYPT=2
- NBC    = NB_CLEF=2

## Beter utilisation

```console
$ ./encrypt > code
$ > Hello world (press Crtl-D to escape)
$ ./decrypt < code
$ > Hello world
```

## Best utilisation

```console
$ ./encrypt < encrypt.c > code
$ ./decrypt < code
$ > ...
```

## To get it anywhere

```sh
$ sudo cp encrypt /bin
$ sudo cp decrypt /bin
```
