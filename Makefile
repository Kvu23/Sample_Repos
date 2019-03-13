APP = app.exe
CC = gcc
CFLAGS = -Wall -g -std=c99 -O2
SRC = ${wildcard *.c}
OBJ = ${SRC:.c=.o}

#rule 1
${APP}:${OBJ}
	${CC} ${CFLAGS} -o $@ $^ 

#rule 2
#$(APP): Add.o Sub.o Mul.o Div.o Example.o 
#	${CC} ${CFLAGS} -o $@ $^

.PHONY: clean
clean:
	rm -rf ${OBJ} ${APP}
