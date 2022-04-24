/*
** EPITECH PROJECT, 2021
** my
** File description:
** Header for the my library
*/

#ifndef MY_H_
    #define MY_H_

// Strings
int is_anum(char const str);
int my_putstr(char const *str);
int my_strlen(char const *str);
int my_getnbr(char const *str);
int my_showstr(char const *str);
int my_str_isnum(char const *str);
int my_str_isalpha(char const *str);
int my_str_islower(char const *str);
int my_str_isupper(char const *str);
int my_str_isprintable(char const *str);
int my_showmem(char const *str, int size);
int my_strcmp(char const *s1, char const *s2);
int my_strncmp(char const *s1, char const *s2, int n);

char *my_revstr(char *str);
char *my_strupcase(char *str);
char *my_strlowcase(char *str);
char *my_strdup(char const *src);
char *my_strcapitalize(char *str);
char *my_strcat(char *dest, char const *src);
char *my_strcpy(char *dest, char const *src);
char *my_strstr(char *str, char const *to_find);
char *my_strncpy(char *dest, char const *src, int n);
char *my_strncat(char *dest, char const *src, int nb);
char **my_str_to_word_array(char const *str);

// Integers
int my_isneg(int nb);
int my_put_nbr(int nb);
int my_is_prime(int nb);
void my_swap(int *a, int *b);
int my_find_prime_sup(int nb);
int my_compute_square_root(int nb);
void my_sort_int_array(int *tab, int size);
int my_compute_power_rec(int nb, int power);

// Others
void my_putchar(char c);

#endif
