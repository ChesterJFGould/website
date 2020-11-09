.EQ
delim ||
define n( 'left ('
define n) 'right )'
.EN
# Math 184 Lecture 09/11/20
## Example 1
Find the minimum and maximum value of |f(x) = x(1 - x) sup {2 over 5}| on the
interval |[-2, 5]|

|f prime n( x n) = n( 1 - x n) sup {2 over 5} - {2x} over {5(1 - x) sup {3/5}}|
|= {5(1 - x) sup {2 / 5}(1 - x) sup {3 / 5} - 2x} over {5(1 - x) sup {3/5}}|
|= {5 - 7x} over {5(1 - x) sup {3 / 5}}|

Now we find the critical points

|5 - 7x = 0|
|x = 5 over 7|

Therefore |x = 5 over 7| is a critical point.
When |x = 1| the function is undefined, so this is a singular point.

|f( 5 over 7 ) = 5 over 7 (1 - 5 over 7 ) sup {2 over 5}|
|f(1) = 0|
|f(-2) = -2(3) sup {2 over 5}|
|f(5) = 5(-4) sup {2 over 5}|

Therefore |-2(3) sup {2 over 5}| is the minimum value of |f(x)| on |[-2, 5]| and
|5(-4) sup {2 over 5}| is the maximum value of |f(x)| on |[-2, 5]|

## First Derivative Test
Let |f| be differentiable on an interval |I| and let |c| be a critical or
singular point on |I|

+ If the sign of |f prime| changes from positive to negative or vice versa at |c|, then
|f(c)| is local maximum or minimum of |f|
+ If the sign of |f prime| does not change at |c| then |f(c)| is neither a local
maximum or minimum
