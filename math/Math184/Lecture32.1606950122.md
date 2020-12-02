.EQ
delim ||
define arcsin 'roman "arcsin"'
define arccos 'roman "arccos"'
define arctan 'roman "arctan"'
.EN
# Math 184 Lecture 02/12/20
## Inverse Sin Function
Consider |y = sin x|.
We know it's domain is |\(Re| and its range is |[-1, 1]|.
Now consider the same function |y = sin x| with a new domain
|[- pi over 2 , pi over 2 ]|.
As this function is one-to-one we know that its inverse must exist.
This inverse function |y = arcsin x| will have the domain |[-1, 1]| and range
|[- pi over 2 , pi over 2 ]|.

We know the following properties that |arcsin| will have

|arcsin ( sin x) = x| for |x| on |[- pi over 2 , pi over 2 ]|

|sin ( arcsin x) = x| for |x| on |[-1, 1]|

The derivative of |y = arcsin x| is obtained as follows

|y = arcsin x|
|sin y = sin ( arcsin x)|
|= x|
|sin y = x|
|d over dx sin y = d over dx x|
|= 1|
|(cos y) dy over dx = 1|
|dy over dx = 1 over {cos y}|

|sin sup 2 y + cos sup 2 y = 1|
|cos sup 2 y = 1 - sin sup 2 y|
|= 1 - x sup 2|
|cos y = sqrt {1 - x sup 2}|

|d over dx (arcsin x) = 1 over {sqrt {1 - x sup 2}}|

## Example 1
Find the following derivatives

(i) |d over dx ( arcsin (x sup 2 - 1))|

|d over dx ( arcsin (x sup 2 - 1)) = 1 over {1 - (x sup 2 - 1) sup 2} cdot d over dx (x sup 2 - 1)|
|= 2x over {sqrt {2x sup 2 - x sup 4}}|

(ii) |d over dx ( cos ( arcsin x))|

|d over dx ( cos ( arcsin x)) = - {sin ( arcsin  x)} over {sqrt {1 - x sup 2}}|

## Inverse Cos Function
The inverse cos function is denoted by |y = arccos x| or |y = cos sup -1 x|
and is defined as the inverse function of the |cos| function with modified
domain |[0, pi ]|

Similarily to |sin|, |d over dx ( arccos x) = - 1 over {sqrt {1 - x sup 2}}|

## Inverse Tan Function
The inverse |tan| function is the inverse function of |y = tan x| with the
modified domain |[- pi over 2 , pi over 2 ]|.
It is denoted by |y = arctan x| or |y = tan sup -1 x| and its derivative
is |d over dx ( arctan x) = 1 over {1 + x sup 2}|
