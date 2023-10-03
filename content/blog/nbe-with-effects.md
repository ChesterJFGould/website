---
title: "Nbe With Effects"
date: 2023-10-03T12:02:05-07:00
front_page: true
---
# NbE With Effects

Usually when playing with dependent types we are tempted into creating pure
languages.
This may stem from a few different places, the sort of person who wants
dependent types is more mathematically inclined and pure languages are closer
to math (or are math), or maybe they feel (possibly correctly) that pure
languages have nicer engineering properties.
However there is one fundamental reason that I think trumps them all, dependent
types require comparing arbitrary programs (even ones with free variables) and
deciding if they are equivalent.

This is quite easy when the programs are pure, simply run them to their final
state and then compare the results, maybe using a few tricks during the
comparison, such as alpha and eta rules.
Once we want to add in effects however, things get more complicated.
With a pure program we have the sense that the final state of an expression,
it's normal form, encompasses everything there was to know about the
expression.
The expression `(\x. x + 2) 2` doesn't really convey more information than
simply `4`.
However if we run `print "Hello, World!"` and get just `()`, it really does
feel like some information is lost, information that we would probably want to
use to decide program equivalence.

## NbE Without Effects

Let's take a quick detour and talk about how we usually normalize pure programs.
The normal method is to use NbE (normalization by evaluation).
There's a two main reasons for this, it's usually easier than other methods, and
it's usually faster than other methods.
Depending on the day, the fact that this is the case either feels like we're
breaking some law of nature, or completely natural and the perfect embodiment of
Rob Pike's third rule of programming.
In any case, the gist of it is this, we transform our expression into some
other form where normalization is easier, then we transform back into an
expression in such a way that we only produce normal forms.
The domain where the forms we transform into live is called the value domain,
the transformation from expression to the value domain is called `eval`, and
the transformation back to expression is called `quote`.
This leads us to a system that looks a bit like this.

```
             eval
            ------>
Expressions         Values
            <------
             quote
```

The key point to emphasize once again is that the composition of `eval` and
`quote` always takes expressions to their normal form, even if they have
free variables.

## NbE With Algebraic Effects

Luckily for me there's already some work on extending NbE to handle effectful
programs, namely [the paper by Ahman and Staton, Normalization by Evaluation and Algebraic Effects](https://doi.org/10.1016/j.entcs.2013.09.007).
Unfortunately for me there's much to much math in the paper for my brain to
parse currently, but I'm pretty sure the NbE algorithm in the paper looks
something like this.

```
                   eval
Expression with   ------> Realm of
Algebraic Effects <------ Mathematics
                   quote
```

The problems here are that A. I don't have the realm of mathematics installed
on my machine, and B. the language I want to normalize isn't explicitly one of
algebraic effects.
However, I think that inspiration can still be drawn from the paper to solve
our problem using one key insight they bring up.
That is that algebraic effects can be normalized by way of the equation defined
for each effect.

### Algebraic Effects Without NbE

Let's take another small detour to quickly discuss what the heck is an algebraic
effect.
Imagine that we have some program with a single bit of global state.
This bit could be thought of as some global boolean switch that we can turn on
and off.
We might use some function `read` to read the state, and `write` to write to it.
This would let us have a program like the following:

```
do
x <- read
if x
then
  do
  write 1
  return "Hello!"
else
  do
  write 0
  return "Goodbye!"
```

If we were to transform this program into one which uses algebraic effects it
would look like this:

```
read [\x.
  if x
  then write 1 [\(). return "Hello!"]
  else write 0 [\(). return "Goodbye!"]
]
```

I think the best way to think about this transformation is that each effectful
function from before has been turned into the node of a tree where each node has
as its child the continuation from the original program.

Now that we have an expression using algebraic effects, we can ask the
question, what would it's normal form look like?
Notice in the program above that there's some redundant writes going on.
If the global state is 1 then we "change" it to a 1, and if it's 0 we write a 0.
We can write down an equation that maybe captures this intuition that some
algebraic effect tree nodes can be reduced in some way.

```
read [\x. if x then write 1 [cont] else alt] = read [\x. if x then cont () else alt]
read [\x. if x then alt else write 0 [cont]] = read [\x. if x then alt else cont ()]
```

There are other equations we could write down, maybe if we write then
immediately read we could just remove the read since we know what the state is,
but these two will do for now.
If we apply these equations to our program to try and get the smallest
program possible, then we would get the following:

```
read [\x.
  if x
  then return "Hello!"
  else return "Goodbye!"
]
```

Transforming back into our original language we would get:

```
do
x <- read
if x
then return "Hello!"
else return "Goodbye!"
```

For a more detailed discussion, and to learn what's so algebraic about
algebraic effects, please see [What is Algebraic about Algebraic Effects and Handlers? by Andrej Bauer](https://doi.org/10.48550/arXiv.1807.05923).

### NbE With Algebraic Effects, For Reals

Ok we've finally gotten to the good bit, how to do NbE on a program containing
effects.
In fact we've already seen it in the previous section.
There we transformed a program into one with explicit algebraic effects,
applied some effect equations, then transformed back into the original language.
This is simply NbE where the value domain handles effects using algebraic
effects.
For fun, and for profit, let's look at this process using an actual real life
example that occurs in a project I'm working on.
This project contains a language which sits somewhere after closure conversion,
and is one where closure allocation has been made explicit.
We have some form for allocating closures `malloc-clo`, and one for applying
them `app-clo`.
Let's look at a simple example for the source program `(\x. x) 10`.

```
id env x = x

do
f <- malloc-clo id ()
app-clo f 10
```

Here the lambda in the source program has been hoisted up to the global level
and been named `id`.
If we turn this program into one using algebraic effects, we would get.

```
id env x = return x

malloc-clo id () [\f.
  app-clo f 10 [\res. return res]
]
```

Just like we did for the global state example, we can write down some equations
to capture our intuition that some effects are redundant.

```
malloc-clo l env [\f. B(app-clo f a [cont])]   
=
malloc-clo l env [\f B(cont (l env a))]

where B(c) denotes some expression B containing c

malloc-clo l env [\f. B]
=
B
where f does not appear free in B
```

Now applying this first equation to our example gives us:

```
id env x = return x

malloc-clo id () [\f.
  return (id () 10)
]
```

and applying our second equation, and the definition of id gives:

```
id env x = return x

return 10
```

This is great considering our intuition that `(\x. x) 10` normalizes to `10`.
It's also great since we never even really had to simulate heap allocation or
the like, even though that's sort of the effect that we would want from
`malloc-clo`.

It remains to be seen whether or not this approach will pan out, but at least
it's interesting.
