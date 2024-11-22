# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lde-merc <lde-merc@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/04 12:51:11 by lde-merc          #+#    #+#              #
#    Updated: 2024/11/18 12:28:49 by lde-merc         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc
AR = ar -rcs

FILES = ft_atoi.c \
ft_bzero.c \
ft_calloc.c \
ft_isalnum.c \
ft_isalpha.c \
ft_isascii.c \
ft_isdigit.c \
ft_isprint.c \
ft_itoa.c \
ft_memchr.c \
ft_memcmp.c \
ft_memcpy.c \
ft_memmove.c \
ft_memset.c \
ft_putchar_fd.c \
ft_putstr_fd.c \
ft_putendl_fd.c \
ft_putnbr_fd.c \
ft_split.c \
ft_strchr.c \
ft_strdup.c \
ft_striteri.c \
ft_strjoin.c \
ft_strlcat.c \
ft_strlcpy.c \
ft_strlen.c \
ft_strmapi.c \
ft_strncmp.c \
ft_strndup.c \
ft_strnstr.c \
ft_strrchr.c \
ft_strtrim.c \
ft_substr.c \
ft_tolower.c \
ft_toupper.c

FILES_B = ft_lstnew_bonus.c \
ft_lstadd_front_bonus.c \
ft_lstsize_bonus.c \
ft_lstlast_bonus.c \
ft_lstadd_back_bonus.c \
ft_lstdelone_bonus.c \
ft_lstclear_bonus.c \
ft_lstiter_bonus.c \
ft_lstmap_bonus.c

SRC = $(FILES)
HEADER = libft.h
OBJ = $(FILES:.c=.o)
OBJ_B = $(FILES_B:.c=.o)
CFLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(NAME) $(OBJ)

%.o : %.c $(HEADER)
    # $< Get all the sources files one by one
    # $^ Get all the dest one by one 
    # $@ Get all the sources
	$(CC) $(CFLAGS) -c $< -o $@

clean: 
	rm -f $(OBJ) $(OBJ_B)

fclean: clean
	rm -f $(NAME)
    
re: fclean all

bonus: $(OBJ) $(OBJ_B) $(NAME) all
		$(AR) $(NAME) $(OBJ_B)

# Specify that these arenot files to compile (just for safety)
.PHONY: all clean fclean re bonus