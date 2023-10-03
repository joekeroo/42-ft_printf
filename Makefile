NAME = libftprintf.a
INCLUDES = -Iinc
AR = ar rcs
RM = rm -rf

SRC_PATH = src
OBJ_PATH = obj

SRC = ft_putchar.c ft_putstr.c ft_putnbr.c ft_putvoid.c ft_puthexa.c \
	  ft_putuint.c ft_printf.c
OBJ = ${addprefix ${OBJ_PATH}/, ${SRC:.c=.o}}

all: $(NAME)

$(NAME): $(OBJ)
	@$(AR) $(NAME) $(OBJ)

${OBJ_PATH}/%.o: ${SRC_PATH}/%.c
	@mkdir -p ${@D}
	@${CC} ${INCLUDES} -c $< -o $@

clean:
	@$(RM) $(OBJ_PATH)

fclean: clean
	@$(RM) $(NAME)
	@${RM} ${OBJ_PATH}

re: fclean all

.PHONY = all clean fclean re