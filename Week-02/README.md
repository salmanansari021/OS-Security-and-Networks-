# Lab 02: C Programming Basics and GCC Compilation

**Module:** OS Security & Networks (ST5003CMD)  
**Name:** Salman Ansari  
**College ID:** 250055 (CU: 16537084)  

---

## Overview
This lab covers the basics of setting up a C programming environment on Ubuntu, writing basic programs with user input, stepping through the four stages of GCC compilation, and checking program exit status codes.

---

## Programs Written

1. **`hello.c` / `program1.c`**
   - Basic Hello World program to test environment setup and output using `printf()`.

2. **`program2.c`**
   - Simple user input program reading an integer using `scanf()` and printing it back to the console.

3. **`program3.c`**
   - Multi-variable program reading name (string), age (int), and height (float) using format specifiers (`%s`, `%d`, `%f`).

4. **Return Value Test (`hello.c`)**
   - Tested returning `0` (success) and `1` (error), checking the result in the shell using `echo $?`.

---

## The Four Stages of GCC Compilation

During the lab, each stage of compilation was executed manually using GCC flags:

| Stage | Command | Output File | Description |
| :--- | :--- | :--- | :--- |
| **1. Preprocessing** | `gcc -E hello.c -o hello.i` | `.i` file | Expands header files and macros |
| **2. Compilation** | `gcc -S hello.i -o hello.s` | `.s` file | Translates C code into assembly code |
| **3. Assembly** | `gcc -c hello.s -o hello.o` | `.o` file | Converts assembly to machine object code |
| **4. Linking** | `gcc hello.o -o hello` | Executable | Links libraries and creates the final binary |

---

## How to Compile and Run

To compile normally and check exit codes:

```bash
# Direct compilation
gcc program1.c -o program1
./program1

# Check exit code
echo $?
