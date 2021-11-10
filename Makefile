NAME = libftprintf.a

CC = gcc

CFLAGS = -Wall -Wextra -Werror -I. -c

RM = rm -f

AR = ar rc

RL = ranlib

SRC = ft_putchar.c ft_putstr.c ft_putnbr.c ft_putvoid.c ft_puthexa.c \
	  ft_putuint.c ft_printf.c

OBJ = ./*.o

all: $(NAME)

$(NAME): $(OBJ)
	@$(AR) $(NAME) $(OBJ)
	@$(RL) $(NAME)

$(OBJ): $(SRC)
	@$(CC) $(CFLAGS) $(SRC)

clean:
	@$(RM) $(OBJ)

fclean: clean
	@$(RM) $(NAME)

re: fclean all
