---
title: "A Simple Volume Script"
date: 2021-08-25T11:43:55
front_page: true
---
Today we will be looking at 2 lines of shell script.
While they may look quite unassuming, when bound to a shortcut (super-v in my case) they will give you a nice and elegant interface for changing the volume on your system.
A demonstration can be found [here](<INSERT VIDEO LINK HERE>).

The pre-requisite programs for today are the following

+ [pamixer](https://github.com/cdemoulins/pamixer)
+ [wjt](https://github.com/ianremmler/wjt)
+ [xargs](https://www.gnu.org/software/findutils/)

Without further ado here is the script.

```
wjt -x $(pamixer --get-volume) \
| xargs -I? pamixer --set-volume ?
```

The best place to start explaining this is probably `wjt`.

`wjt` is a very simple program, when you run it it gives the user a slider bar at the top of their screen.
Whenever the user changes the value of the slider (by clicking or using one of the shortcuts, see `man wjt`) the new value is printed to stdout.
An initial value can be provided though the `-x` flag as we do in our script.

Next we use `pamixer` to interface with pulseaudio.
On the first line `pamixer --get-volume` does exactly what you would expect, it prints the current volume.
Say the current volume is 20.
When we run `wjt -x $(pamixer --get-volume)` the code inside the `$()` is run first.
This code is then replaced by its output, which we established is 20, giving us `wjt -x 20`.
When this is then executed a slider pops up with an initial value of 20.

Finally we will cover `xargs`.
When the first line is executed its output (the new values of the slider) is put into the input of the second using the pipe (`|`) operator.
`xargs` then takes each line of this output and runs the given command with the `?` replaced with the input on that line.
Say we run the whole script and then change the slider to `21`, `xargs` will receive a line of input containing `21`.
It will then take its given command `pamixer --set-volume ?` and replace the wildcard given by the `-I` flag (in this case `?`) with that line of input and then run the new command.
This results in xargs running the command `pamixer --set-volume 21` which has exactly the effect you would expect, the system volume is set to 21.
`xargs` then repeats this process for every new line of input, giving us a simple, elegant volume widget.
