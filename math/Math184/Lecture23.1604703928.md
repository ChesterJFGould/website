.EQ
delim ||
define n( 'left ('
define n) 'right )'
.EN
# Lecture 06/11/20
## [Fermat's](https://en.wikipedia.org/wiki/Pierre_de_Fermat) Theorem
If |f| has a local maximum or minimum at an interior point |c| and if |f prime|
exists at |c|, then |f prime (c) = 0|

## Critical and Singular Points
Let |f(x)| be a function and let |c| be a point in its domain. Then if
|f prime (c)| exists and is zero, we call |x = c| a critical point of |f|.
If |f prime (c)| does not exist, we call |x = c| a singular point of |f|.

## Example 1
Find the critical and singular points of the following functions.

(a) |f(x) = {x - 1} over {x sup 2 + 1}|

|f prime (x) = {(x sup 2 + 1)(1) - (2x)(x - 1)} over {(x sup 2 + 1) sup 2}|
|= {x sup 2 + 1 - 2x sup 2 + 2x} over {(x sup 2 + 1) sup 2}|
|= {- x sup 2 + 2x + 1} over {(x sup 2 + 1) sup 2}|

As |f prime (x)| is defined for all |x|, |f| has no singular points.

To find the critical points we find when the numerator is |0|.

|-x sup 2 + 2x + 1 = 0|
|x = 1 +- sqrt 2|

Therefore |1 + sqrt 2| and |1 - sqrt 2| are both critical points of |f|

(b) |f(x) = {ln x} over x|

|f prime (x) = {1 - ln x} over {x sup 2}|

From this we can can see that |f| has a critial point at |e| as |ln e = 1|.
What is less obvious is that there are no singular points as |0| is not on the
domain of |f|.

## Finding Maximum and Minimum
To find the maximum and minimum of some function |f| on an interval |[a, b]|
we do the following

1. Find all critical points and singular points in |(a, b)|
2. Evaluate |f| at each critical, singular, and endpoint on |[a, b]|
3. Choose the largest and smallest values from these values, these are your
maxmimum and minimum values

## Example 2
Find the min and max of |f(x) = x sup 3 + 6x sup 2 + 9x +2| on |[-4, 1]|

|f prime (x) = 3x sup 2 + 12x + 9|
|3x sup 2 + 12x + 9 = 0|
|3(x sup 2 + 4 x + 3) = 0|
|3(x + 3)(x + 1) = 0|

Therefore |f| has no singular points and critial points |-3, -1| on |[-4, 1]|

|f(-4) = -2|
|f(-3) = 2|
|f(-1) = -2|
|f(1) = 18|

Therefore |f| has a maximum |18| and minimum |-2| on |[-4, 1]|
