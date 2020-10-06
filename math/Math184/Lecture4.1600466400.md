.EQ
delim ||
define if 'roman "if "'
.EN
# Math 184 Lecture 18/09/20
## Limits

### Average Velocity
The position of an object moving along a line is given by
|s(t) = -16t sup 2 + 128t| where |t >= 0|.
For instance |s(0) = 0|, |s(1) = 112|, etc.
The output of s corresponds to the distance of an object away from the origin
at 0, so you can imagine an object moving along a number line.
The output of s is measured in metres and t is measured in seconds.

The average velocity of the object over the time interval |[t sub 0 , t sub 1 ]|
is the change in position divided by the change in time.

|v sub {roman "avg"} = {s(t sub 1 ) - s(t sub 0 )} over {t sub 1 - t sub 2 }|

For example, over |[1, 2]|, we have |v sub avg = {s(2) - s(1)} over {2 - 1}
= {192 - 112} over 1 = 80|.
As we decrease the duration of the time interval we notice that the v sub avg
seems to converge on a single value.
For example |v sub avg| over [1, 2] is 80, over [1, 1.5] is 88, [1, 1.01] is
95.84, [1, 1.001] is 95.984, etc.

As |t sub 1| approaches 1, the average velocity seems to approach 96 m/s, in
which case we say that the instantaneous velocity at |t = 1| is 96 m/s.
Notice however that if we actually set |t sub 1| to 1 we get a division by zero
which is undefined.
So what we actually need to look at is the *behaviour* of the function around
the point |t = 1|.

### Tangent Line Problem
How do we find the line tangent to a point on the function |y = f(x)|?

We know that the line tangent to a point on a circle is the line that only
passes through that point and no other on the circle.
But this does not generalize to an arbitrary function, the tangent line to a
point on f *may* pass through the graph at another point.

Let's consider our function |y = f(x)|

Let |P(a, f(a))| be a point on the graph of |y = f(x)|

First of all we know that the line tangent to P must pass through P.
The problem we are faced with is finding the slope of this tangent line.
So we define another different point on the graph.

Let |P(b, f(b))| be a point on the graph of |y = f(x)|

Let m be the slope of the line PQ.

|m = {f(b) - f(a)} over {b - a}|

If we start to bring b closer to a, we notice that PQ starts to look like what
we expect the line tangent to P to look like.
So we say that as b approaches a, m becomes the slope of line tangent to P.

### Definition of a Limit
Suppose that a function |y = f(x)| is defined for all x values near a number a,
except possible at a.
If |f(x)| is arbitrarily close to a number L for all x sufficiently close to a
but no equal to a, then L is called the limit of |f(x)| as x approaches a.

The notation for a limit is |lim from {x -> 1} f(x) = L|.

### Example 1
Consider |f(x) = x sup 2 + 1|.

|lim from {x -> 2} f(x) = 5 = f(2)|

Note that while the limit to 2 here is equal to f(2), this is not always true.

### Example 2
Consider |f(x) = {x sup 2 - 1} over {x - 1} = {(x - 1)(x + 1)} over {x - 1}|.
The domain of f is all real number *except*<br> for 1.

If we take |lim from {x -> 1} g(x)| we get 2, but |g(1)| is *not* defined.

### Example 3
Consider |f(x) =
left {
matrix {
lcol {
{x + 1} above
{-1}
}
lcol {
{if x != 1} above
{if x = 1}
}
}|

|lim from {x -> 1} f(x) = 2 != f(1)|

|f(1) = -1|

This and example 2 are examples of functions where the limit around a certain
point is not actually equal to the value of the function at that point.
