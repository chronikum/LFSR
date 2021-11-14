CC = clang

NAME=lfsr

SRC = main.c

OUTFILES = compiled/

CFLAGS = -g -Wall -Wextra -Werror


all: $(NAME)

$(NAME): *.c
	$(CC) $(CFLAGS) $(SRC) -o $(NAME)

clean:
	rm -f ./libft/*.o
	rm -f *.o
	rm -rf $(OUTFILES)

fclean: clean
	rm -f ./libft/libft.a
	rm -f $(NAME) minishell

re: fclean $(NAME)