.EQ
delim ||
.EN
# Math 184 Lecture 18/11/20
## Example 1
Consider |f(x) = 1 over {x sup 2 + 2x - 3}|.
Find |lim from {x -> 1 sup +} f(x)|

|lim from {x -> 1 sup +} 1 over {x sup 2 + 2x - 3}|
|= lim from {x -> 1 sup +} 1 over {(x - 1)(x + 3)}|

Unfortunately we cannot just evaluate the limit by factoring the polynomial.
So we need to do some reasoning about the function around |x = 1|.
We can see that the limit we want is positive as both factors of the polynomial
are positive.
Therefore |lim from {x -> 1 sup +} f(x) = inf|.

Similar reasoning can be applied to the left hand limit to give us
|lim from {x -> 1 sup -} f(x) = - inf|.

As the left hand and right hand limits are not the same we can say
|lim from {x -> 1} f(x) = DNE|

## Vertical Asymptotes
If one of the following properties is true then we say that |x = a| is a
vertical asymptote of |f(x)|

+ |lim from {x -> a} f(x) = +- inf|
+ |lim from {x -> a sup +-} f(x) = +- inf|

## Limits at infinity
If |f(x)| becomes arbitrarily close to a number |L| for all sufficiently large
or small |x|, we say that the limit of |f(x)| is |L| as |x| approaches positive
or negative infinity.

## Example 2
Consider the following function

|h(x) =
left {
matrix {
lcol {
{1 over x} above
1
}
lcol {
{roman if x != 0} above
{roman if x = 0}
}
}|

|lim from {x -> inf} h(x) = lim from {x -> inf} 1 over x = 0|
|lim from {x -> - inf} h(x) = lim from {x -> - inf} 1 over x = 0|
