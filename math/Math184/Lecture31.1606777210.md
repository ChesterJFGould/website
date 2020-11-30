.EQ
delim ||
define approx 'roman{"&#8776;"}'
.EN
# Math 184 Lecture 30/11/20
## Linear Approximation
Suppose that |f(x)| is a function and we know |f(a)| and |f prime (a)|.
We want to approximate |f(x)| for some |x| which is near |a|.

We can do this with |f(x) approx L(x)| where |L| is the equation of the tangent
line to |f(x)| at |a|.
This is given by the following

|L(x) = f prime (a) (x - a) + f(a)|

## Example 1
Approximate |sqrt 3.98| using a suitable linear approximation.

We can approximate |sqrt 3.98| with the function |f(x) = sqrt x|.
The closest trivial value of |sqrt x| is |x = 4| so we choose this as our |a|.

|f prime (x) = 1 over {2 sqrt x}|
|L(x) = f prime (a) (x - a) + f(a)|
|= 1 over {2 sqrt 4} (x - 4) + sqrt 4|
|= 1 over 4 (x - 4) + 2|

|L(3.98) = 1.995|

This is our approximation of |sqrt 3.98|.

## Example 2
A company produced |1000| tennis balls per day.
At that production level its profit is |1870 $| and its marginal revenue is
|3.2| and the marginal cost is |1.8|.
Estimate how much the companies profit will increase if it increases its
production level by |10| balls per day.

Let |P(x)| be the profit function.

|P(1010) - P(1000) approx P prime (1000) (1010 - 1000)|
|= 10 P prime (1000)|
|P = R - C| where |R| is the revenue and |C| is the cost.

We can approximate these with marginal revenue and marginal cost at |P(1000)|.

This gives us |P(1010) approx 10 (3.2 - 1.8) = 14|.
This is our approximation of the increase is revenue.

## Linear Approximation Error
We can split the error in a linear approximation into the following cases

+ |f prime prime (a) > 0 -> f(x) > L(x)|
+ |f prime prime (a) < 0 -> f(x) < L(x)|
