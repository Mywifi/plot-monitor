# Run
```shell
sh plot.sh
```

# How it works

`/ssd1`and`/ssd2`is where my 2T nvme ssd mount


`/hd1`and`/hd2`is where my usb3.1 hard disk mount

The shell scripts simply get the nvme ssd used percentage every minute using `df` command, if it is less than 1%, start new tasks.

My computer is 64G RAM and the CPU is i9-10900k, each plotting task needs a temp storage location of at least 332 GiB (357 GB), so a 2T nvme ssd can run up to 5 tasks at the same time.

Because the CPU got very high in the phase1 and phase2, so this shell scripts firstly start 3 plotting tasks and then sleep 2 hours to wait for the phase1 and phase2 to be done until it starts the left 2 plotting tasks.

Finanly, there will be 10 tasks at the same time, each tasks will use 5000 MiB memory buffer size. it will take 12 hours to wait the next new tasks to run.