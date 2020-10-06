.EQ
delim ||
.EN
# Math 184 Lecture 28/09/20
## Derivatives

### Velocity
For a given position function s(t), velocity is given by 
|lim from {t -> t sub 0} {s(t) - s(t sub 0 )} over {t - t sub 0}|.

### Slope of a tangent line
The slope of the tangent line to the graph of |y = f(x)| at a point |P(a, f(a))| is 
defined as the following.

|lim from {x -> a} {f(x) - f(a)} over {x - a}|

### Definition
The derivative of |f(x)| at a number |a| is denoted by |f prime (a)|, and is defined by 
the following.

|f prime (a) = lim from {x -> a} {f(x) - f(a)} over {x - a}|

This can also be expressed as the following.

let |h = x - a|, then |x = a + h|

|f prime (a) = lim from {h -> 0} {f(a + h) - f(a)} over h|

If |f prime (a)| exists, then the line tangent to the graph of |y = f(x)| at the point 
|(a, f(a))| is given by the following.

|y - f(a) = f prime (a)(x - a)|

### Notation
|f prime = f prime (x) = df over dx = d over dx f|

### Example 1
let |y = f(x) = 3x sup 2 + 2x - 1|

Find |f prime (a)|

|f prime (a) = lim from {h -> 0} {f(a + h) - f(a)} over h|

|= lim from {h -> 0} {(3(a + h) sup 2 + 2(a + h) - 1) - (3a sup 2 + 
2a - 1)} over h|

|= lim from {h -> 0} {3(a sup 2 + 2ah + h sup 2 ) + 2a + 2h - 1 - 
3a sup 2 - 2a + 1} over h|

|= lim from {h -> 0} {6ah + 6h sup 2 + 2h}/h|

|= lim from {h -> 0} (6a + 6h + 2)|

|= 6a + 2|

### Example 2
let |f(x) = 1 over {2x - 1}|

Find |f prime (x)| using the definition of the derivative

|f prime (x) = lim from {h -> 0} {1 over {2(x + h) - 1} - 1 over {2(x) - 1}} over h|

|= lim from {h -> 0} {( 1 over {2(x + h) - 1} - 1 over {2(x) - 1})(2(x + h) - 1)(2x - 
1)} over {h(2(x + h) - 1)(2x - 1)}|

|= lim from {h -> 0} {(2x - 1) - (2(x + h) - 1)} over {h(2(x + h) - 1)(2x - 1)}|

|= lim from {h -> 0} {-2h} over {h(2(x + h) - 1)(2x - 1)}|

|= lim from {h -> 0} - 2 over {(2(x + h) - 1)(2x - 1)}|

|= - 2 over {(2(x) - 1)(2x - 1)}|

|= - 2 over {(2x - 1) sup 2}|

Now find the equation of the tangent line at a point |(-1, f(-1))|

|y = f prime (-1)(x - (-1)) + f(-1)|

|= {( - {2(-1)} over {2(-1) - 1})} sup 2 (x + 1) + 1 over {2(-1) - 1}|

|= 2 over 9 (x + 1) + 1 over 3|

### Relating f' to f
Consider |y = f(x)|

+ |f prime (a) = 0| if and only if, the tangent line is horizontal.
+ |f prime (x) > 0| iff f(x) is increasing
+ |f prime (x) < 0| iff f(x) is decreasing

### Graphs of f and f'
Take a look at [these](https://www.desmos.com/calculator/ofzljtxlqr) graphs.
Look for the relationship between |f'| (the blue line) and |f| (the red line).
