.EQ
delim ||
.EN
# Math 184 Lecture 16/11/20
## Inflection Points
The point of inflection(inflection point or IP) is the point on the graph of
|f(x)| at which the concavity of |f| changes.

## Example 1
Consider |f(x) = x sup 3 + 6x sup 2 + 9x + 12|

We know that |f prime prime = 6x + 12|.
Since this second derivative changes sign at |x = -2| we can see than the
inflection point of |f| is at |(-2, f(-2))|

## Second Derivative Test
Let |c| be a critical point of |f| where |f prime prime (c)| exists.
If |f prime prime (c) > 0| then |f(c)| is a local minimum of |f|.
If |f prime prime (c) < 0| then |f(c)| is a local maximum of |f|.

## Example 2
Determine where the function |f(x) = 3x sup 4 - 4x sup 3 - 12x sup 2 + 5|
has a local maximum or minimum.

|f prime (x) = 12x sup 3 - 12x sup 2 - 24x|
|f prime prime (x) = 36x sup 2 - 24x - 24|

|f| has three critical points, |x = 0, 2, -1|.

|f prime prime (0) < 0|
|f prime prime (2) > 0|
|f prime prime (-1) > 0|

Therefore |f| has a local maximum at |x = 0| and local minima at |x = 2, -1|

## Limits at Infinity
Suppose that |f| is defined for all |x| near a number |a|.
If |f(x)| grows arbitrarily large for |x| sufficiently close to |a|, then we
write |lim from {x -> a} f(x) = inf| and say that the limit of f(x) is infinity
as |x| approaches |a|

## Example 3
Consider |y = f(x) = 1 over {x sup 2}|

|lim from {x -> 0} f(x) = inf|

## Negative Infinity
If |f(x)| is negative and grows arbitrarily large in magnitude for all |x|
sufficiently close to |a| then we write |lim from {x -> a} f(x) = - inf| and
say that the limit of |f(x)| is negative infinity as |x| approaches |a|.

## Example 4
Consider |g(x) = - 1 over {(x - 2) sup 2}|

|lim {x -> 2} g(x) = - inf|

## One-sided Infinite Limits
Suppose |f| is defined for all |x| near |a| with |x > a|.
If |f(x)| becomes arbitrarily large for all |x| sufficiently close to |a| with
|x > a|, the we write |lim from {x -> a sup +} f(x) = inf|.
The same is for the left hand limit if |f| is defined for all |x| near |a| with
|x < a|.
