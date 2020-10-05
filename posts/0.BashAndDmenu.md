#Simple powerful scripts and dmenu.

I recently wrote a [simple music player](https://github.com/Techser/MusicManager) and was really surprised by a couple of things.
As I had never really written any bash scripts besides the odd one or two liner, the remarkable efficiency of pipelines really blew me away.
For instance the one line to get the path to all subdirectories to the current one, sort them, and then let the user search for and choose one is simply 

`find -type d | sort -V | dmenu -i -l 10`

This might seem like a trivial example to those more familiar with shell scripting but to accomplish all that in a single line of code is really quite impressive to me.

The other thing that surprised me while writing that script was how absurdly powerful dmenu is.
It's a really simple program.
You pipe in text and each line is displayed as an option to the user.
The line they pick is then printed to stdout and it closes.
But with this simple program you can build anything from a [frontend to NetworkManager](https://github.com/firecat53/networkmanager-dmenu), to a full blown [file manager](https://github.com/huijunchen9260/dmenufm).
I'm even conviced you could build a text editor with it, although I think I'm going to stick with vim for now.

I found when writing MusicManager that I really enjoy writing this kind of little script.
While bash is a bit of a weird language, its versatility is really something.
I'm hoping I can think of some more interesting things to write in the future that can be accomplished in the same style of short shell script.
