.EQ
delim ||
define if 'roman "if "'
.EN
# Math 184 Lecture 21/09/20
## Limits Continued

### One-sided limits
Suppose that a function f is defined for all x near a with |x > a|.
If |f(x)| is arbitrarily close to a number L for all x sufficiently close to a
with |x > a|, we write this fact as |lim from {x -> a sup +} f(x) = L|, and we
say that the right hand limit of |f(x)| equals L as x approaches a
(from the right).
The same is true for |x < a|, but this is called the left hand limit and is
written as |lim from {x -> a sup -}|

#### Example 1
Consider [the function](https://www.desmos.com/calculator/xuauawjccc)
|y = f(x)||=
left {
matrix {
lcol {
{x sup 2 + 1} above
{x}
}
lcol {
{if x < 0} above
{if x >= 0}
}
}|

|lim from {x -> 0 sup +} f(x) = 0|

|lim from {x->0 sup -} f(x) = 1|

#### Normal limits and one-sided limits
Assume that |f(x)| is defined for all x near a, except possibly at a.
Then |lim from {x -> a} f(x) = L| if and only if |lim from {x->a sup +} f(x)
= lim from {x -> a sup -} f(x) = L|

#### Example 2
Let the function |f(x) = {\(ba x - 2 \(ba} over {x - 2}|

Evaluate |lim from {x -> 2} f(x)|

|lim from {x -> 2 sup +} f(x) = lim from {x -> 2 sup +} {x - 2} over {x - 2}
= lim from {x -> 2 sup +} 1 = 1|, where |x >= 2|

|lim from {x -> 2 sup -} f(x) = lim from {x -> 2 sup -} - {x - 2} over {x - 2}
= lim from {x -> 2 sup -} -1 = -1|, where |x < 2|

### Limit Laws
+ |lim from {x -> a} (f +- g) = lim from {x -> a} f +- lim from {x -> a} g|
+ |lim from {x -> a} (fg) = lim from {x -> a} f * lim from {x -> a} g|
+ |lim from {x -> a} (f/g) = lim from {x -> a} f / lim from {x -> a} g|, where
|lim from {x -> a} g != 0|
+ |lim from {x -> a} (cf) = c * lim from {x -> a} f|, where c is a constant
+ |lim from {x -> a} (f) sup n = ( lim from {x -> a} f ) sup n|, where n is a
positive integer
+ |lim from {x -> a} (c) = c|, where c is a constant
+ |lim from {x -> a} x = a|
+ |lim from {x -> a} (f(x)) sup {1 over n}
= ( lim from {x -> a} f(x)) sup {1 over n}|, where n is a positive and even
integer and the limit of fis positive

#### Example 1
Suppose |lim from {x -> 3} f(x) = -1| and |lim from {x -> 3} g(x) = 5|
Find |lim from {x -> 3} {2g(x)} over {f(x) - g(x)}|

We know the limit of the numerator exists as |lim from {x -> 3} g(x) = 5|.
But we must check if the limit of denominator is not 0.

|lim from {x -> 3} f(x) - lim from {x -> 3} g(x) = -1 - 5 = -6 != 0|

This means that |lim from {x -> 3} {2g(x)} over {f(x) - g(x)} = - 5 over 3|

#### Limits and polynomials
Assume that |p(x)| and |q(x)| are polynomials.

|lim from {x - >a} p(x) = p(a)|

|lim from {x -> a} p(x) over q(x) = p(a) over q(a)| if |q(a) != 0|

#### Example 2
Consider |lim from {x -> 5} {2x + 5} over {x sup 2020 - 1}|.
Obviously the denominator is not 0, therefore we can just evaluate the
expression to |15 over {5 sup 2020 - 1}|

#### Example 3
Find |lim from {x -> 2} {x sup 2 - x - 2} over {x sup 2 - 4}|

We cannot just immediatly plug in 2 for x as the denominator would be 0.
Therefore we must factor the polynomials.

|lim from {x -> 2} {x sup 2 - x - 2} over {x sup 2 - 4}
= {(x - 2)(x + 1)} over {(x - 2)(x + 2)} = {x + 1} over {x + 2}|

Now we can evaluate it to become |3 over 4|
