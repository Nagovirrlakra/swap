## Swap 
yeah, literally, i dont know what i build now is but, maybe its can useful to all of linux linux user. But if you ask to me what is this. I'll answer, this is a swap command.

this commands make you easier to create swapfile. many of people using fallocate to build the swapfile. but, it is not enough, they need to adding a permission to swapfile. then activate it. but with this command you just need to wite single command.

## Installation
this system or command, need to installed to your /bin filesystem to able to works.
to do it, just follow the steps below: 

1)convert it by gcc to ELF file format 

```gcc -Wall -g SWAP.sh -o SWAP```

2) Copy to your bin directory with:
 ```sudo cp swap ~/bin```
or, copy it manually from your file manager

3)then, run the command 
 ``` swap ```

## How To Use 
to create swapfile just do the code like this [ <swap> <Parameter> <size Of swapfile + G> ]
Example: swap -c 1G
