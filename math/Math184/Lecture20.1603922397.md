.EQ
delim ||
define approx 'roman{"&#8776;"}'
.EN
# Math 184 Lecture 28/10/20
## Related Rates
### Example 1
Two small planes approach an airport.
One is has a velocity of 120 km/h west, and the other has velocity 150 km/h
north.
Assume that they fly at the same elevation.
How fast is the distance between the planes changing when the westbound plane
is 180 km from the airport, and the northbound plane is 225 km from the
airport.

We can view the two planes as forming a right triangle, so at the given
distances from the airport we know they are |sqrt {180 sup 2 + 225 sup 2}|km
apart.

Let |x| be the distance between the westbound plane and the airport at a time
|t|.

Let |y| be the distance between the northbound plane and the airport at a time
|t|.

Let |z| be the distance between the two planes at a time |t|.

We can immediately say that |z sup 2 = x sup 2 + y sup 2| as we know the two
planes can be thought of as forming a right triangle.

Then we can just take the derivative of |z|

|d over dt z sup 2 = d over dt (x sup 2 + y sup 2)|
|2z cdot dz over dt = 2x cdot dx over dt + 2y cdot dy over dt|
|z cdot dz over dt = x cdot dx over dt + y cdot dy over dt|

We are given |dx over dt| and |dy over dt| so we can just plug in the values
and get our answer.

|z cdot dz over dt = -120x - 150 y|
|dz over dt = {-120x - 150y} over z|
|dz over dt = {-120(180) - 150(225)} over {sqrt {180 sup 2 + 225 sup 2}}|
|approx -192|

Therefore the distance between the planes is decreasing at a rate of 192
km/h at the given instant.

### Example 2
Suppose that |q| thousand units of a commodity can be sold weekly when the
price is given by |p| dollars per unit, and |p| and |q| satisfy the demand
equation |p + 2q + pq = 38|

How fast are weekly sales changing at a time when |p = 6| and the price is
falling at a rate of |0.4$| per week?

|dp over dt + 2 dq over dt + p cdot dq over dt + dp over dt cdot q = 0|

Before we plug values into this equation we need to find q

|6 + 2q +6q = 38|
|q = 4|

Now we have all the values we need to find |dq over dt|

|-0.4 + 2 dq over dt + 6 dq over dt - 0.4(4) = 0|
|dq over dt = {0.4 + 0.4(4)} over 8|
|= 0.25|

Therefore the weekly sales are increasing by |0.25| thousand sales per week.
