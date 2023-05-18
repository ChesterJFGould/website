---
title: "Unix the Programming Language"
date: 2023-05-17T23:13:31-07:00
draft: false
front_page: true
---

Unix is a live programming language.

Files can be thought of as objects which only respond to two messages, read and write.

Plan 9 and FUSE both add the ability for read and write to do more than just do disk i/o.

This makes Linux sort of like a Smalltalk where objects are programmed through FUSE.

The file system provides the "live" part.

Because files can be updated during execution (while the operating system is running),
and because there is a level of indirection to refer to them (file paths are pointers, not the contents of the file),
changing how a files responds to read and write messages will change how other parts of the system function.

For example, imagine changing `/bin/echo` to point to a program which is like normal echo but prints a space between each character.
How would this change the behaviour of other programs which use it?

The genius of Plan 9 is that it is a distributed object-oriented language which restricts messages to simple byte streams.

In this view, however, executing files is a bit weird.

We can think of exec as a message which causes the object to treat the output of a read message sent to itself as machine code and run it on the cpu.

Hashbangs let us override this behaviour.

The analogy between object orientation (in the original sense) and Unix is more than a novelty, it can bear fruit.

If exec is weird, is it truly needed? Smalltalk itself has no exec.

Imagine a Unix where exec is removed and FUSE is made easy to program.

Imagine a Unix where use defined messages are allowed, files being able to respond to more than just read and write.

Maybe even a Unix where more data types are allowed than the humble byte stream? (Gasp)

I have no idea if any of these ideas would be good, but at least they would be interesting and novel.

They seem, at least to me, to be a genuine mutation of the Unix formula (would a Unix without exec even be a Unix?).

I hope I'm smart and dedicated enough to at least try them out.

And if not me, someone else.
