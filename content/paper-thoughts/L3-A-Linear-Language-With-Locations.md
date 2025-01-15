---
title: "Paper Thoughts: L3 a Linear Language With Locations"
date: 2024-08-23T14:46:48-07:00
draft: true
front_page: true
---

[Paper DOI](https://doi.org/10.1007/11417170_22)

# Motivation for reading paper

I like the idea presented in [Lively Linear Lisp](doi.org/10.1145/142137.142162) where we can have a safe language with explicit memory management, but this technique relies on dynamic typing.
There's a notion in my head that extending this technique to a statically typed language would involve some sort of strong update, and so since this paper at least on the face of it deals with those (plus linear logic, another key ingredient from the Baker paper), maybe it will have solved this problem.
I'm also just noticing that it cites the Baker paper, so it really better have solved this problem.

I'm also interested in how they designed a terminating language with cyclic references, how this works with linearity, and how this compares with [Paulette's universe level idea](https://koronkevi.ch/files/hope2023.pdf).

# Thoughts while reading paper

## Section 2: Core l3
+ Seems like we're going to be operating under the assumption that all types have some common representation (probably a pointer), I hope there's some discussion on getting rid of this assumption
+ I'm not sure why it matters that we use call-by-value if the language is terminating, could be to just avoid having to prove confluence and all that jazz
+ Separating the pointer from the permission to read/write to it is interesting, I can see the possibility for integrating this with ideas from [Kinds Are Calling Conventions](https://www.microsoft.com/en-us/research/uploads/prod/2020/03/kacc.pdf) to get rid of the uniform representation assumption
+ 
