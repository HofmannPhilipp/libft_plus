CC = cc
CFLAGS = -Wall -Wextra -Werror
LIBFT_DIR = ./libft
FT_PRINTF_DIR = ./ft_printf
GNL_DIR = ./get_next_line

VPATH = $(LIBFT_DIR) $(FT_PRINTF_DIR) $(GNL_DIR)

SRCS =	ft_isalpha.c ft_isdigit.c ft_isalnum.c \
		ft_isascii.c ft_isprint.c ft_strlen.c \
		ft_memset.c ft_bzero.c ft_memcpy.c \
		ft_memmove.c ft_strlcpy.c ft_strlcat.c \
		ft_toupper.c ft_tolower.c ft_strchr.c \
		ft_strrchr.c ft_strncmp.c ft_memchr.c \
		ft_memcmp.c ft_strnstr.c ft_atoi.c \
		ft_calloc.c ft_strdup.c ft_substr.c \
		ft_strjoin.c ft_strtrim.c ft_split.c \
		ft_itoa.c ft_strmapi.c ft_striteri.c \
		ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
		ft_putnbr_fd.c ft_lstnew.c ft_lstadd_front.c \
		ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
		ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
		ft_lstmap.c \
		ft_printf.c ft_print_char.c ft_print_str.c \
		ft_print_nbr.c ft_print_hexnbr.c ft_print_pointer.c \
		ft_print_unsignednbr.c \
		get_next_line.c get_next_line_utils.c \

OBJS_DIR = objects
OBJS = $(addprefix $(OBJS_DIR)/, $(SRCS:.c=.o))
NAME = libft.a

all: $(NAME)

$(NAME): $(OBJS)
	@echo "compiling libft.a"
	@ar rcs $(NAME) $(OBJS)

$(OBJS_DIR)/%.o: %.c | $(OBJS_DIR)
	@echo "Compiling $<"
	@$(CC) $(CFLAGS) -c $< -o $@

$(OBJS_DIR):
	@echo "Creating $(OBJS_DIR) directory"
	@mkdir -p $(OBJS_DIR)

clean:
	@echo "clean libft"
	@rm -rf $(OBJS_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re