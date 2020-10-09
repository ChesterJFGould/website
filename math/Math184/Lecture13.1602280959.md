.EQ
delim ||
.EN
# Math 184 Lecture 09/10/20
## Implicit differentiation
### Example to motivate learning
Consider |x sup 2 + y sup 2 = 1|.
We can rewrite this as |y = +- sqrt {1 - x sup 2}|.

If we take the derivative we get |- x over { sqrt {1 - x sup 2}}|.

How can we take the derivative without rearranging the equation?

|d over dx (x sup 2 + y sup 2) = d over dx 1|
|d over dx (x sup 2 ) + d over dx (y sup 2 ) = 0|

Here we use the chain rule to take the derivative of y.

|2x + 2y cdot dy over dx = 0|
|dy over dx = - x over y|
|= x over { sqrt {1 - x sup 2}}|

Now consider |x sup 2 y sup 2 = (y + 1) sup 2 (4 - y sup 2)|?
How do we find |dy over dx|?

We can't easily solve for y, so we can't just rearrange the equation and then
take the derivative normally.
The [graph](https://www.desmos.com/calculator/1pm9r3tyqc) of this function is
also pretty weird.

### Example 1
Find |dy over dx|, where |y = f(x)| is defined by |x sup 3 + y sup 3 = 2xy|.

|d over dx (x sup 3 + y sup 3 ) = d over dx (2xy)|
|d over dx (x sup 3) + d over dx (y sup 3) = (2x) prime y + (2x)y prime|
|3x sup 2 + 3y sup 2 cdot y prime = 2y + 2xy prime|
|3y sup 2 y prime - 2xy prime = 2y - 3x sup 2|
|(3y sup 2 - 2x) y prime = 2y - 3x sup 2|
|y prime = {3y - 3x sup 2} over {3y sup 2 - 2x}|

We have to express the derivative in terms of |y| and |x|.

### Example 2
Find |dy over dx|, where |y = f(x)| is defined by |x sin y + cos 2y = cos y|.

|dx (x sin y + cos 2y) = d over dx (cos y)|
|d over dx (x sin y) + d over dx (cos 2y) = - sin y cdot y prime|
|x prime sin y + x ( sin y) prime - sin 2y cdot (2y) prime = -y prime sin y|
|sin y + x cos y cdot y prime - 2y prime sin 2y = -y prime sin y|
|xy prime cos y - 2y prime sin 2y + y prime sin y = -sin y|
|y prime (x cos y - 2 sin 2y + sin y) = - sin y|
|y prime = { sin y} over {x cos y - 2 sin 2y + sin y}|
