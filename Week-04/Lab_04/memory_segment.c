#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <inttypes.h>
int global_initialized = 150; // Data segment
int global_uninitialized; // BSS segment
int main(void)
{
int local_variable = 30; // Stack segment
int *heap_variable = malloc(sizeof(int)); // Heap segment
if (heap_variable == NULL)
{
printf("Memory allocation failed.\n");
return 1;
}
*heap_variable = 500;
uintptr_t addresses[] = {
(uintptr_t)&global_initialized,
(uintptr_t)&global_uninitialized,
(uintptr_t)&local_variable,
(uintptr_t)heap_variable
};
const char *segments[] = {
"Data segment",
"BSS segment",
"Stack segment",
"Heap segment"
};
printf("=== Process Memory Segment Addresses ===\n\n");
printf("Global initialized: %p (Data segment)\n",
(void *)&global_initialized);
printf("Global uninitialized: %p (BSS segment)\n",
(void *)&global_uninitialized);
printf("Local variable: %p (Stack segment)\n",
(void *)&local_variable);
printf("Dynamic variable: %p (Heap segment)\n",
(void *)heap_variable);
int highest = 0;
int lowest = 0;
for (int i = 1; i < 4; i++)
{
if (addresses[i] > addresses[highest])
highest = i;
if (addresses[i] < addresses[lowest])
lowest = i;
}
uintptr_t difference =
addresses[2] > addresses[3]
? addresses[2] - addresses[3]
: addresses[3] - addresses[2];
printf("\nHighest address: %s\n", segments[highest]);
printf("Lowest address: %s\n", segments[lowest]);
printf("Stack-Heap address difference: %" PRIuPTR " bytes\n",
difference);
free(heap_variable);
return 0;
}
