##
## EPITECH PROJECT, 2021
## Makefile
## File description:
## Makefile that build the project
##

NAME		= ${PROJECT_NAME}

CFLAGS		= -Wall -Wextra -I include

LDFLAGS		= -L lib/my -lmy -L lib/my_printf -lmy_printf

SRC_DIR 	= src/

SRC			= $(SRC_DIR)${PROJECT_NAME}.c

OBJ			= $(SRC:.c=.o)

RM 			= rm -rf

$(NAME): build_libs $(OBJ)
	$(CC) -o $(NAME) $(OBJ) $(CFLAGS) $(LDFLAGS)

all:		$(NAME)

build_libs:
	make -C lib/my
	make -C lib/my_printf

clean:
	$(RM) $(OBJ)

fclean:		clean
	$(RM) $(NAME)

debug: CFLAGS += -g
debug: re

re:	fclean all
