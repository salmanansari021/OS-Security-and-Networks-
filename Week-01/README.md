# Lab 01: Linux File Operations and Basic C Compilation

**Module:** OS Security & Networks (ST5003CMD)  
**Name:** Salman Ansari  
**College ID:** 250055 (CU: 16537084)  

---

## Overview
This lab covers essential Linux command-line operations in Ubuntu, managing packages with `apt`, and writing, compiling, and running a basic C program using GCC.

---

## Summary of Lab Tasks

### 1. File and Directory Operations
- Created and navigated into a working directory (`mkdir linux_lab`, `cd linux_lab`).
- Created and edited text files using `nano greeting.txt`.
- Displayed file contents with `cat greeting.txt`.
- Copied and renamed files using `cp` and `mv` (`old_greeting.txt`).
- Checked file permissions and listings with `ls -l`.
- Deleted temporary files and directories with `rm` and `rmdir`.

### 2. Package Management (`apt`)
- Updated the package index using `sudo apt update`.
- Installed the C development environment using `sudo apt install build-essential`.
- Checked the compiler version with `gcc --version`.
- Searched available packages in the repository with `apt search python3`.

### 3. Writing and Compiling C Code
- Wrote a basic program (`hello.c`) that computes the sum of two integers:
  ```c
  #include <stdio.h>

  int main() {
      int a = 10, b = 5;
      printf("Hello, Linux_Lab!\n");
      printf("Sum of %d and %d is %d\n", a, b, a + b);
      return 0;
  }
