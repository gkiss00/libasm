# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gkiss <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/08/21 18:15:43 by gkiss             #+#    #+#              #
#    Updated: 2020/02/01 11:36:40 by gkiss            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

OBJS    	=	ft_strdup.o \
				ft_strlen.o \
				ft_strcpy.o \
				ft_strcmp.o \
				ft_write.o \
				ft_strdup.o \
				ft_read.o \

NAME		=	libasm.a

all :			${NAME}

${NAME} :		
				nasm -f macho64 ft_strlen.s
				nasm -f macho64 ft_strcpy.s
				nasm -f macho64 ft_read.s
				nasm -f macho64 ft_write.s
				nasm -f macho64 ft_strcmp.s
				nasm -f macho64 ft_strdup.s
				ar rc ${NAME} ${OBJS}
				ranlib ${NAME}

clean :			
				rm -rf ${OBJS}

fclean :		clean
				rm -rf ${NAME}

re :            fclean all

.PHONY:         all clean fclean re
