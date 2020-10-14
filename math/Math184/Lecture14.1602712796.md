.EQ
delim ||
.EN
# Math 184 Lecture 14/10/20
## Implicit Differentiation Continued

### Example 1
Find the equation of the tangent line to the curve |x sup 2 y sup 2 =
(y + 1) sup 2 (4 - y sup 2 )| at the point |(0, -2)|.

|d over dx (x sup 2 y sup 2) = d over dx ((y + 1) sup 2 (4 - y sup 2 ))|
|d over dx (x sup 2 ) cdot y sup 2 + x sup 2 cdot d over dx (y sup 2 ) =
d over dx (((y + 1) sup 2 ) cdot (4 - y sup 2 ) + (y + 1) sup 2 cdot d over dx (4 - y sup 2 )|
|2xy sup 2 + x sup 2 cdot 2y cdot dy over dx = 2(y + 1) cdot d over dx (y + 1) cdot (4 - y sup 2 ) +
(y + 1) sup 2 cdot (0 - 2y cdot dy over dx )|
|2xy sup 2 + 2x sup 2 y y prime = 2(y + 1) cdot y prime (4 - y sup 2 ) + (y + 1) sup 2 cdot (-2yy prime )|

If we let |x = 0|, then |y prime (0) = 0|.
Therefore the equation of the tangent line at |(0, -2)| is |y - (-2) = y prime (0) (x - 0)|

### Derivatives of Logarithmic and Exponential Functions
We know |(e sup x ) prime = e sup x|. And that |(e sup {ln x}) = x|.
So what is |(ln x) prime|?

|y = ln x|
|e sup y = x|
|d over dx (e sup y ) = d over dx x|
|e sup y cdot y prime = 1|
|y prime = 1 over {e sup y}|
|= 1 over x|

Therefore |(ln x) prime = 1 over x|

### Example 2
Find |dy over dx| for the following function.

i. |y = ln(5x + 2)|
|d over dx ln(5x + 2)|
|= 5 over {5x + 2}|

ii. |y = {ln(x sup 2 )} over {x sup 2}|
|d over dx {ln(x sup 2 )} over {x sup 2}|
|= {d over dx ln(x sup 2 ) cdot x sup 2 - ln(x sup 2 ) cdot d over dx x sup 2} over {x sup 4}|
|= {2x over {x sup 2} cdot x sup 2 - 2xln(x sup 2 )} over {x sup 4}|
|= {2 - 2ln(x sup 2 )} over {x sup 3}|

### Example 3
Consider |y = b sup x|.
How do we take the derivative of this?

|y = b sup x|
|ln y = ln(b sup x )|
|= xln(b)|
|d over dx ln y = d over dx (xln b)|
|1 over y cdot y prime = ln b|
|y prime = y ln b|
|= b sup x ln b|

### Example 4
Find |dy over dx| for the following.

i. |y = pi sup x|
|d over dx pi sup x|
|= pi sup x ln pi|

ii. |y = x sup pi|
|d over dx x sup pi|
|= pi x sup {pi - 1}|

### Logarithmic Differentiation
Consider |y = x sup x, (x > 0)|.
This is neither an expoential function or power function so how do we take the derivative of this?
The answer is we take ln of both sides.

|y = x sup x|
|ln y = ln x sup x|
|ln y = x ln x|
|d over dx ln y = d over dx (x ln x)|
|1 over y cdot y prime = ln x + 1|
|y prime = x sup x (ln x + 1)|
