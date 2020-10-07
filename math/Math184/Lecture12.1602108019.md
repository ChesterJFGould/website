.EQ
delim ||
.EN
# Math 184 Lecture 07/10/20
## Chain Rule
We know that |(f cdot g)(x) = f(g(x))|.
So what is |d over dx (f cdot g)|?

|d over dx (f cdot g)(x) = (f prime cdot g)(x)g prime (x) = f prime (g(x))g prime (x)|

Consider |y = g(x)g(x) = g(x) sup 2|.
We can subsitute |g(x)| for |u| to give us |y = u sup 2|.
This gives us the derivative

| dy over dx = dy over du du over dx|

## Example 1
Find |d over dx (e sup {x sup 2 + 3x})|.

We first subsitute |u = x sup 2 + 3x|

|d over du e sup u d over dx (x sup 2 + 3x)|
|= e sup u (2x + 3)|

We now subsitute |u| back out to get our final derivative of

|(2x + 3)e sup {x sup 2 + 3x}|

## Example 2
Find |d over dx ({x sup 3 + 1} over {x sup 3 - 1}) sup {1 over 4}|

|d over dx ({x sup 3 + 1} over {x sup 3 - 1}) sup {1 over 4}|
|= 1 over 4 ({x sup 3 + 1} over {x sup 3 - 1}) sup {- 3 over 4}
d over dx {x sup 3 + 1} over {x sup 3 - 1}|
|= 1 over 4 ({x sup 3 + 1} over {x sup 3 - 1}) sup {- 3 over 4}
{(x sup 3 - 1)(3x sup 2 ) - (3x sup 2 )(x sup 3 + 1)} over {(x sup 3 - 1) sup 2}|
|= 1 over 4 ({x sup 3 + 1} over {x sup 3 - 1}) sup {- 3 over 4}
{3x sup 2 (x sup 3 - 1 - x sup 3 - 1)} over {(x sup 3 - 1) sup 2}|
|= 1 over 4 ({x sup 3 + 1} over {x sup 3 - 1}) sup {- 3 over 4}
{-6x sup 2} over {(x sup 3 - 1) sup 2}|
|= - 3 over 2 ({x sup 2} over {(x sup 3 - 1) sup 2})
({x sup 3 + 1} over {x sup 3 - 1}) sup {- 3 over 4}|

## Example 3
Suppose |f(x)| is differential for all real numbers |x|.
We also know the following

|f(1) = 3|
|f prime (5) = 5|

Now we have the following function

|g(x) = sin ( pi f(x))|

Find |d over dx g(x)|

|g prime (x)|
|= d over dx ( sin ( pi f(x)))|
|= cos ( pi f(x)) cdot pi cdot d over dx f(x)|

This is as far as we can get, but we can still evaluate |g prime| at |x = 1|

|g prime (1)|
|= pi cos ( pi f(1)) cdot f prime (1)|
|= pi cos (3 pi ) cdot 5|
|= -5 pi|

## Example 4
Find |d over dx ( cos ( e sup {sin (x sup 2 )}))|

|d over dx ( cos ( e sup {sin (x sup 2 )}))|
|= - sin ( e sup {sin (x sup 2 )}) cdot d over dx e sup {sin (x sup 2 )}|
|= - sin ( e sup {sin (x sup 2 )}) cdot e sup {sin (x sup 2 )} cdot d over dx
sin (x sup 2 )|
|= - sin ( e sup {sin (x sup 2 )}) cdot e sup {sin (x sup 2 )} cdot
cos (x sup 2 ) cdot d over dx (x sup 2 )|
|= - sin ( e sup {sin (x sup 2 )}) cdot e sup {sin (x sup 2 )} cdot
cos (x sup 2 ) cdot 2x|
