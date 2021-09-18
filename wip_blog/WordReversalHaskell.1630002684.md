# Reversing words in Haskell
---
As you might expect the pre-requisite program for today is just a [Haskell compiler](https://www.haskell.org/ghc/).

The small program we will be studying today is one which reverses the words, but not the order of those words, in text piped into stdin.
For example if you give it "Hello there" it will give you "olleH ereht".
The language we will be using is Haskell as the program is particularily short in it.
I will also try my best to explain the program without mentioning monads even once (oops).

Here we are

```
module Main where

main :: IO ()
main = getContents >>= putStrLn
                       . unwords
                       . map reverse
                       . words
```

At the top we simple tell Haskell that this is the `Main` module, so it should look in this module for the `main` function which we define next.
The first line of the `main` definition is simple asserting the type of the function, in this case `IO ()`.
This type basically just tells Haskell that this function is allowed to perform i/o operations such as reading from stdin and writing to stdout as we will do.
Finally we have the actually function body, this function takes no arguments so we simple say `main = ...` (if it took an argument we would write `main foo = ...` where `foo` is the argument variable).

Now with that out of the way we can move on to the actual function content.
We will start by rewriting the program in a more explicit way to perfectly layout exactly what it is doing.
I have also included type annotation where I can so we can see exactly how the data is transformed.

```
module Main where

main :: IO ()
main = do
       stdinContents <- getContents
       let stdinWords :: [String]
           stdinWords = words stdin
           reversedStdinWords :: [String]
           reversedStdinWords = map reverse stdinWords
           reversedStdin :: String
           reversedStdin = unwords reversedStdin
       putStrLn reversedStdin
```

We start by getting the contents of stdin.
Although I can't include a type annotation for stdinContents it has type `String`.
We won't worry to much about what the `<-` does here, simple imagine it as telling haskell to run the function `getContents` (which has type `IO String`) and put its result into stdinContents.

Now that we have the text that we are going to perform operations on, we should start doing the transform.
Our first operation is applying the function `words` to the contents of stdin.
`words` is a very simple function, it takes a `String` and splits it into a list of strings (`[String]`) where each element of the list is a word.
We have the words now so how are we going to reverse them?
To explain that we must understand both the `reverse` function and what a `String` actually is.

The `reverse` function, like the `words` function, is extremely simple.
It takes in some list of things and reverses it.
So that isn't hard to understand, but how does this help us reverse a `String`?
Well `String` is actually just another name for a list of characters (`[Char]`).
Therefore if we apply `reverse` to a `String` we simply get the reversed `String`!

Ok fine so we can reverse a single `String`, how would we go about reversing a list of strings?
This is where `map` comes in.
`map` takes in a function that takes in a `String` and returns a `String`, we would write this as the type `String -> String`, and a list of strings and then creates a new list of strings by applying the function to each element of the list.
Therefore the type of map is `(String -> String) -> [String] -> [String]`.
So when we give `map` the function `reverse` and the list of words in the stdin contents it will apply `reverse` to each of these words and then create a list of the results!

Great!
So now all we have to do is take our list of reversed words, put it back together as a single `String` and print it to stdout!

To put the list back together we will use the function `unwords`.
You can probably even guess what it is, it is simply the inverse function of `words` (this means that if you apply `words` to some text and then apply `unwords` to the result of that you will simply get the original text).
So we simply apply `unwords` to the reversed words list and get the `String` that contains the contents of stdin with all the words reversed.

Now for our last operation, printing to stdout.
We use the function `putStrLn` for this which has the type `String -> IO ()`.
The type `IO ()` is just a way of saying that the function will take some i/o action and return the unit (`()`).
In Haskell the unit type is essentially the equivalent of `void` in C, we return it when the function is simply used for the side effects it performs.

Alright, so we now understand most of what the original program does.
But what are these funny `>>=` and `.` operators?

The `.` operator is probably the easiest to understand of the two so we will start with it.
This operator performs what is called *function composition*.
That is to say, if you have some functions `foo` and `bar` the composition of the two applied to some argument `x` would be just `foo (bar x)`.
If we rewrite this using the `.` operator we would get `(foo . bar) x` which is equivalent to `foo (bar x)`.
Now say we want to compose more than two functions (as we do in our program), if we compose three example functions `foo`, `bar`, and `baz` like so `(foo . bar . baz) x` this would be equivalent to `foo (bar (baz x))`.
The point of this is that now we don't necessarily need to apply the function right away.
We could give the new function a name like `let fooBarBaz = foo . bar . baz` and then use it later in our program.
This is great because now we have an easy way to create larger functions out of smaller ones which is the key to functional programming.

Now we get to the `>>=` operator.
We won't dive too deep into what it actually is as that is a whole post (or series of posts) unto itself.
Instead I will give you a simplified model of what it does here.
In our program `getContents >>= putStrLn . unwords . map reverse . words` is exactly equivalent to the following.

```
do
stdinContents <- getContents
(putStrLn . unwords . map reverse . words) stdinContents
```

In fact we can think of it as having the type `IO String -> (String -> IO ()) -> IO ()`.
It just takes some function which interacts with the outside world and returns a string and a function which takes in a string and then interacts with the outside world and runs the second with the result of the first.
In this way it is actually very similar to function composition.

Awesome, so now we fully understand the initial program (with a mild amount of handwaving and indirection).
Lets bloody well go and try it out old sport.

Our sample text will be the first line of everyones favourite based boomer manifesto, *"The Industrial Revolution and its consequences have been a disaster for the human race."*.
Good so we will put that into the file `unaboomer.txt`, compile our program into the binary `wordReverse` using the command `ghc wordReverse.hs` (assuming the text of our program is in the file `wordReverse.hs`), and then run it with `./wordReverse < unaboomer.txt`.
This gives us the desired output of *"ehT lairtsudnI noituloveR dna sti secneuqesnoc evah neeb a retsasid rof eht namuh .ecar"*.
Now we would also expect that running it twice would give us the original text so lets try that with `./wordReverse < unaboomer.txt | ./wordReverse`.
And as expected we just get back *"The Industrial Revolution and its consequences have been a disaster for the human race."*.

Good.
Well I hope that wasn't too confusing, it's hard to tell how much detail I should give on each part.
