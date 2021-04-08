# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pallyson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/04 13:55:35 by pallyson          #+#    #+#              #
#    Updated: 2020/11/12 13:54:53 by pallyson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRC = $(wildcard *.c)
DEP = libft.h
OBJ = ${SRC:.c=.o}


CC = cc
RM = rm -f

CFLAGS = -Wall -Wextra -Werror

.c.o:
				${CC} ${CFLAGS} -c $< -include ${DEP} -o ${<:.c=.o}

${NAME}:		${OBJ}
				ar rc  ${NAME} ${OBJ} && ranlib ${NAME}

all:			${NAME}

clean:
				${RM} ${OBJ}

fclean:			clean
				${RM} ${NAME}

re:				fclean all

.PHONY =		all clean fclean re
.DEFAULT_GOAL =	all
