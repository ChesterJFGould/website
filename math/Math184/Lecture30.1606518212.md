.EQ
delim ||
.EN
# Math 183 Lecture 27/11/20
## Example 1
A box without a cover has no cover, a square base, and a volume of |v = 32000 cm sup 3|.
Minimize the amount of material used (the surface area).

The surface area is given by |s = b sup 2 + 4bh| where |b| is the side length
of the base and |h| is the height of the box.
The volume of the box is given by |b sup 2 h = 32000|.
This gives us |h = 32000 over b sup 2|.

Plugging all this back into the surface area formula gives us |s = b sup 2 + {4 cdot 32000} over b|.

Now we just take the derivative

|s prime = 2b - 4 cdot 32000 cdot 1 over {b sup 2}|
|= {2b sup 3 - 128000} over {b sup 2}|

|s prime = 0|
|2b sup 3 - 128000 = 0|
|b = sup 3 sqrt {128000 over 2}|
|= 40|

Now we know to test the derivative of |s prime| on the intervals |(0, 40)|
and |(40, inf )| to find out if |b = 40| is a local minimum.

|s prime (1) < 0|
|s prime (41) > 0|

Therefore |s(40)| is the absolute min. value of |s|.
Therefore the dimensions of the box will be |b = 40| and |h = 20|.

## Example 3
A man starts his boat from a point A on the bank of a 3km wide straight river
and wants to reach a point B, 8km downstream on the opposite bank, as quickly
as possible.
If he can row at |6km/h| and run at |8km/h| where should he start crossing the
river to reach B as soon as possible.

We take |d| to be the distance the man runs after he rows across the river.

This means the rowing distance is |ad = sqrt {x sup 2 + x sup 2}| and the
remaining distance |bd = 8 - x|.

Dividing each distance by the speed during that distance gives us the total
time of |t = {sqrt {3 sup 2 + x sup 2} over 6} + {8 - x} over 8|

Taking the derivative of |t| with respect to |x| gives us

|dt over dx = 2x over {12 sqrt {3 sup 2 + x sup 2}} - 1 over 8|

This function has a critial point at |x = 3.402|, so we check the function
on either side of this point.

|t(3) < 0|
|t(4) > 0|

Therefore |t(3.402)| is a global minimum and the man should row about
|3.402 km| downstream before running the rest of the way.
