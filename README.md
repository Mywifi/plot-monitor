# Run
```shell
sh plot.sh
```

# Intro
`/ssd1`and`/ssd2`is where my nvme ssd mount


`/hd1`and`/hd2`is where my usb3.1 hard disk mount

# How it works
Get the nvme ssd used percentage every minute using `df` command, if it is less than 1%, start new tasks.