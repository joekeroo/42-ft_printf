# 42-Printf

Note: The file structure of this project has been modified.

In this project, we will be creating a library that contains [`ft_printf()`](src/ft_printf.c), this function will mimic the original [`printf()`](https://man7.org/linux/man-pages/man3/fprintf.3.html).

# Project Requirements

|    Requirements    |                             Description                              |
| :----------------: | :------------------------------------------------------------------: |
|    Program name    |                           `libftprintf.a`                            |
|   Turn in files    |              `Makefile`, `*.h`, `*/*.h`, `*.c`, `*/*.c`              |
| External functions | `malloc`, `free`, `write`, `va_start`, `va_arg`, `va_copy`, `va_end` |

# Compilation

- `make` - compiles the library into libftprintf.a
- `make clean` - removes the obj folder
- `make fclean` - clean and removes libftprintf.a
- `make re` - fclean and recompiles

To use the library functions in your code, simply include its' header ([`libftprintf.h`](inc/libftprintf.h)):

```
#include "libftprintf.h"
```

# Printf Tester

Jean-Michel's printf tester - https://github.com/Tripouille/printfTester

# Credits

- [`PrintfTester`](https://github.com/Tripouille/printfTester) by [Tripouille](https://github.com/Tripouille).
