# Lab 03: Investigating Process Lifecycles and OS Interaction

**Module:** OS Security & Networks (ST5003CMD)  
**Name:** Salman Ansari  
**College ID:** 250055 (CU: 16537084)  

---

## Overview
This lab covers basic process management in Linux using C programs and terminal commands. It demonstrates how processes start, run, identify themselves, read input, and return exit statuses back to the shell.

---

## Tasks Summary

### Task 1: Long-Running Process (`program1.c`)
- Created a program that loops for 30 seconds using `sleep(1)`.
- Verified the running process from another terminal window using `ps aux | grep task1`.

### Task 2: Process Identity (`program2.c`)
- Used `getpid()` and `getppid()` from `<unistd.h>` to print the current Process ID (PID) and Parent Process ID (PPID).
- Checked process state while sleeping for 20 seconds.

### Task 3: Exit Codes and OS Feedback (`program3.c`)
- Evaluated conditional inputs (positive vs. negative numbers).
- Returned `0` for success and `1` for failure.
- Checked the return status in bash using `echo $?`.

### Task 4: Standard I/O Streams (`program4.c`)
- Used `scanf()` for standard input (`stdin`) and `printf()` for standard output (`stdout`) to greet a user.

### Task 5: Conditional Execution and Termination (`program5.c`)
- Combined PID display with user decision-making (`1` to continue, `0` to exit).
- Returned proper exit codes (`0` or `1`) based on the choice and verified with `echo $?`.

---

## How to Compile and Run

Open terminal in this directory and compile using `gcc`:

```bash
# Example for Task 1
gcc program1.c -o program1
./program1

# Check exit code of any finished program
echo $?
