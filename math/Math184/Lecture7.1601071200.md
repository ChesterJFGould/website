.EQ
delim ||
define if 'roman "if "'
.EN
# Math 184 Lecture 25/09/20
## Continuity Continued
### Continuity of composed functions

If |g(x)| is continuous at a number a and |f(x)| is continuous at |g(a)|, then the 
composition |f(g(x))| is continuous at the number a.
#### Example 1

Consider the function |h(x) = ({x sup 2 + 5} over {x sup 100 - 12}) sup 180| Determine if |h(x)| is 
continuous at |x = 3|

|h(x) = f(g(x))| where |g(x) = {x sup 2 + 5} over {x sup 100 - 12}| and |f(x) = x sup 180|

Since |g(x)| is a rational function and 3 is in its domain, and |f(x)| is a 
polynomial we know that |h(x)| is continuous at |x = 3|.
Directional continuity

A function f(x) is continuous from the left at |x = a| if |lim from {x -> a sup -} f(x) = f(a)|.
The same is true for right continuity except the limit is taken from the right 
instead of the left.
Continuity on an interval

A function is continuous on an interval I if the function is continuous at ever 
point on I. If I contains its endpoints then continuity on I means continuity 
from the left or right at the endpoints.
#### Example 2

Determine the intervals of continuity for the function |f(x) =
left {
matrix {
lcol {
{x sup 2 - 3} above
{2x + 5}
}
lcol {
{if x < 1} above
{if x >= 1}
}
}|

When x is smaller than 1, |f(x)| is a polynomial. Therefore |f(x)| is continuous on 
|(- inf , 1)|

For the values of |f(x)| where x >= 1 we need to check the left endpoint as we 
are checking a half-closed interval where the left endpoint is closed.

|lim from {x -> 1 sup +} f(x) = lim from {x -> 1 sup +} (2x + 5) = 7|

|lim from {x -> 1 sup -} f(x) = lim from {x -> 1 sup -} (x sup 2 - 3) = -2|

This means that |f(x)| has a discontinuity at |x = 1|. But |f(x)| is continuous from 
the right at |x = 1| therefore |f(x)| is also continuous on |[1, inf )|.

Therefore |f(x)| is continuous on the intervals |(- inf , 1)| and |[1, inf )|.
#### Example 3

For what values of the constant c is the function |f(x) =
left {
matrix {
lcol {
{5x} above
{cx sup 2 + 3x}
}
lcol {
{if x <= 2} above
{x > 2}
}
}|

|lim from {x -> 2 sup +} f(x) = lim from {x -> 2 sup +} (cx sup 2 + 3x) = c(2) sup 2 + 3(2) = 4c + 6|

|lim from {x -> 2 sup -} f(x) = lim from {x -> 2 sup -} (5x) = 10 = f(2)|

We need to find |c| such that |4c + 6 = 10|. Therefore |c = 1|.
### Intermediate Value Theorem

Suppose that |f(x)| is continuous on a closed interval |[a, b]|, and |L| is any 
number between |f(a)| and |f(b)|. Then there at least one number |c| in |(a, b)| such 
that |f(c) = L|

In particular, if |f(x)| is continuous on |[a, b]| and |f(a)f(b) < 0| (i.e. they have 
opposite signs) then there must be at least one number |c| in |(a, b)| where |f(c) = 
0|
#### Example 4

Prove that there is a solution for the following equation.

|x sup 2018 + 3x - 5 = 0|

We can use the Intermediate Value Theorem for this proof.

let |f(x) = x sup 2018 + 3x - 5|

|f(0) = -5 < 0|

|f(1) = 1 sup 2018 + 3(1) - 5 < 0|

|f(2) = 2 sup 2018 + 3(2) - 5 > 0|

Since |f(0) < 0| and |f(2) > 0| and |f(x)| is continuous on |[0, 2]|, there must a 
number |c| in |(1, 2)| such that |f(c) = 0|. This prooves that there is a solution to 
the given equation.
