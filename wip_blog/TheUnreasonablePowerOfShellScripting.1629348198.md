# The Unreasonable Power of Shell Scripting
---
One of the many hilarities of modern day computing is that one of our oldest and most poorly designed languages is in fact one of our most powerful languages.
This language (or family of languages) exhibits poor syntax, an eclectic smattering of operators, no support for data structures besides the string; number; and completely obscure array, and incredibly poor ability for abstraction, and yet it is the only language which has completely seamless concurrency and parallelism, and a successful and thriving component architecture.
I am of course talking about Bash, and more generally the family of POSIX shell scripting languages.


To understand why these languages have these properties which nowadays are incredibly desirable but rare we must cast our minds back to the creation of Unix.
In these days (as I am sure you are aware) the amount of memory in a computer was very limited relative to the size of the data you wanted to operate on.
Say, for example, you wanted to take some file and get all the unique words contained in it in alphabetic order (maybe for some linguistics course).
This is a simple task and so we can do it relatively simply, we will just split it into its words, sort the words alphabetically, and then turn a sequence of the same word into just one instance of the word.
However we have now run into a problem, we must store not only the original file but three other similarily sized pieces of temporary data in memory.
For the modern man this barely seems like a problem, maybe instead of just some file we can think of performing this operation on the text of all the books on amazon to get a sense of the relative scale ([in fact the solution we are about to discuss has actually been reinvented for exactly this sort of thing](https://adamdrake.com/command-line-tools-can-be-235x-faster-than-your-hadoop-cluster.html)).
The solution is this, break the file into small chunks and then perform all these operations on them and reassemble the chunks at the end.
This way we only need to be able to store multiple versions of each small chunk in memory at once (the astute reader will notice that there is of course an exception to this, in our example we need to sort all the words together, however this just means we need to be able to store about two copies of the original file in memory).
In fact a better perspective on this solution is not that we break up the file into small chunks and them pass them through these transformations individually, but that the data simply flows through each operation continuously almost like an assembly line.
