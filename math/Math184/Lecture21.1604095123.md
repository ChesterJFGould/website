.EQ
delim ||
define approx 'roman{"&#8776;"}'
.EN
# Math 184 Lecture 30/10/20
## Example 1
An inverted conical water tank with a height |12m| and a radius of |6m| is
drained through a hole in the vertex at a rate of |2m sup 3 /s|

What is the rate of change of the water depth when the water depth is |3m|

Let |h| be the water depth at a time |t|

Let |r| be the radius of the water cone at a time |t|

Let |v| be the volume of the water cone at a time |t|

The volume of a cone is given by

|v = 1 over 3 pi r sup 2 h|

We aren't given any information about the rate of change of |r|, so we need to
find a way to remove it from the equation. To do this we use similar triangles.

The ratio of the radius to height of the initial cone is |6 over 12|, this will
remain true no matter what |h| we choose. So we can rewrite the formula as
the following

|v = 1 over 3 pi ( h over 2 ) sup 2 h|
| = pi over 12 h sup 3|

Now we just take the derivative with respect to time

|dv over dt = pi over 4 h sup 2 dh over dt|

We are given |dv over dt| and |h| so we just plug these values in to get our
answer.

|-2 = pi over 4 cdot 3 sup 2 dh over dt|
|dh over dt = - 8 over {9 pi}|

## Example 2
A particle is travelling along the curve |3y = x sup 3 + 5|

If the particles distance from the origin is increasing at a rate of 3 units
per second, how fast is the particles x coordinate changing at the instant
that the particle reaches the point |(1, 2)|?

Let |s| be the particles distance from the origin at a time |t|

We can write |s| as the following

|s sup 2 = x sup 2 + y sup 2|

Since we only care about |x| not |y| we can just rewrite |y| in terms of |x|.

|s sup 2 = x sup 3 + {x sup 3 + 5} over 3|

Now we just take the derivative with respect to time

|2s ds over dt = 3x sup 2 dx over dt + {3x sup 2} over 3 dx over dt|
|= 4x sup 2 dx over dt|
|dx over dt = {2s ds over dt} over {4x sup 2}|
|= {2 sqrt {x sup 2 + y sup 2}  ds over dt} over {4x sup 2}|

All we have to do now is plug in our given values to get the following

|dx over dt = {6 sqrt {1 sup 2 + 2 sup 2}} over {4(1) sup 2}|
|= {6 sqrt 5} over 4|
