.EQ
delim ||
.EN
# Math 184 Lecture 23/11/20
## Example 1
Sketch the graph of |f(x) = x sup 3 + 6x sup 2 + 9x + 12|.

|f prime (x) = 3x sup 2 + 12 x + 9|
|= 3(x + 3)(x + 1)|

Therefore we have critical points at |x = -3, -1| and the function is
increasing on |(- inf, -3)| and |(-1, inf )|, and decreasing on |(-3, -1)|

|f prime prime (x) = 6x + 12|
|6x + 12 = 0|
|x = -2|

Therefore there is an inflection point at |x = -2| and |f| is concave down
on |(- inf , -2)| and concave up on |(-2, inf )|. This also means that |f(-3)|
is a local max and |f(-1)| is a local min.

Using this information we can now sketch the graph of this function and get
something close to [this](https://www.desmos.com/calculator/qrwm0yxh3y).

## Example 2
Sketch the graph of |f(x) = x over {x - 1}|.

We check for horizontal asymptotes by the following

|lim from {x -> inf } f(x)|
|= lim from {x -> inf } x over {x - 1}|
|= lim from {x -> inf } 1 over {1 - 1 over x}|
|= 1|

This is also true for |- inf| therefore we have a horizontal asymptote at
|y = 1|.
We can also see that |f(x)| has a horizontal asymptote at |x = 1|

|f prime (x) = - 1 over {(x - 1) sup 2}|

|f prime prime (x) = 2 over {(x - 1) sup 3}|

We can see now that |f| is concave down on |(- inf , 1)| and concave up on
|(1, inf )|.

Using these properties you should be able to draw a graph resembling
[this](https://www.desmos.com/calculator/x37zmfhbmt).
