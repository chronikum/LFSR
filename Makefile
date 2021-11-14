CC = clang

NAME=lfsr

SRC = main.c

CFLAGS = -g -Wall -Wextra -Werror


all: $(NAME)

$(NAME): *.c
	$(CC) $(CFLAGS) $(SRC) -o $(NAME)

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re: fclean $(NAME)
