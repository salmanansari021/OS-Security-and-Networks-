# Lab 04: Data Types and OS Memory Management

**Module:** OS Security & Networks (ST5003CMD)
**Name:** Salman Ansari
**College ID:** 250055 (CU: 16537084)

---

## Overview
This lab explores how the operating system and C compiler manage memory for different data types and process segments on a 64-bit Ubuntu system.

---

## Lab Exercises

### 1. Data Type Sizes (`datatype.c`)
- Used the `sizeof` operator to find the storage size of basic C types.
- System results (64-bit Linux / LP64):
  - `char`: 1 byte
  - `int`: 4 bytes
  - `float`: 4 bytes
  - `double`: 8 bytes
  - `long`: 8 bytes
  - `pointer`: 8 bytes

### 2. Memory Segment Address Mapping (`memory_segment.c`)
- Mapped variables to the main process memory segments:
  - **Data segment:** Initialized global variable (`global_initialized = 150`)
  - **BSS segment:** Uninitialized global variable (`global_uninitialized`)
  - **Stack segment:** Local function variable (`local_variable = 30`)
  - **Heap segment:** Dynamically allocated memory via `malloc()`
- Printed pointer addresses using `%p` to verify process layout:
  - **Highest address:** Stack segment (near top of virtual memory)
  - **Lowest address:** Data / BSS segment
  - **Growth:** Calculated the byte difference between stack and heap addresses.

---

## How to Compile and Run

Run these commands inside the `Lab_04` directory:

```bash
# 1. Compile and run data types program
gcc datatype.c -o datatype
./datatype

# 2. Compile with warnings and run memory segments program
gcc -Wall -Wextra memory_segment.c -o memory_segment
./memory_segment
