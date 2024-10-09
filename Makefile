CFLAGS += -Werror -Wall

module.so: looter.c
	gcc $(CFLAGS) -fPIC -shared -Xlinker -x -o $@ $< -lcurl
	strip module.so

