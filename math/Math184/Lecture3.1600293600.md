.EQ
delim ||
.EN
# Math 184 Lecture 16/09/20
## Kinds of Functions Continued
### Relating Inverse and One-to_One Functions Continued
The graphs of |y = f(x)| and |y = f sup -1 (x)| are symmetric about the line |y = x|.
For example consider [this](https://www.desmos.com/calculator/kuf6zzj6hn)
graph comparing |e sup x| and |ln x|.

## Optimization of Quadratic Functions
Optimization is the process of finding the input to a function that gives the
greatest value out.
The following wasn't explicitly said to be about optimization but it is pretty
obvious that it is.

### Example 1
This example is about a hypothetical company, who sells some amount q per week
of a hypothetical product for p dollars.

a) Find the linear demand equation for the price.
Use the notation p for the unit price and q for the weekly demand.

Since the selling unit price p is a linear function of the weekly demand q, we
know that |p = mq + b| for some constants m and b.
The points |(q, p)|, |(5000, 200)| and |(4950, 201)| are on the graph of the
demand function,
therefore we can calculate the slope with the formula
|m = {y sub 2 - y sub 1} over {x sub 2 - x sub 1}|.
This gives us |m = {200 - 201} over {5000 - 4950} = - 1 over 50|.

We can use the slope-point formula, |y - y sub 0 = m(x - x sub 0 )| where
|y sub 0| and |x sub 0| form an arbitrary point that is known to be on the
graph, to give us the graph of the function.
This gives us |y - 200 = - 1 over 50 (x - 5000)|.

All of this gives us the demand equation |p = - 1 over 50 q + 300|.

b) The cost function |C(q) = 100000 + 75q|.

The revenue function |R(q) = pq = (- 1 over 50 q + 300)q
= - 1 over 50 q sup 2 + 300q|

The profit function |P(q) = R(q) - C(q)
= ( - 1 over 50 q sup 2 ) - (100000 + 75q) = - 1 over 50 q sup 2 + 225q - 100000|.

c) Find the break-even point.

We need to find q so that P(q)=0.

|- 1 over 50 q sup 2 + 225q - 100000 = 0|

To solve this we use the quadratic formula |{-b +- sqrt {b sup 2 -4ac}} over 2a|.
This gives us |q = {-225 +- sqrt{225 sup 2 -4(- 1 over 50 )(-100000)}} over {2(- 1 over 50 )} =| |[10786.5, 463.5]|

d) How should this hypothetical company operate in order to maximize the weekly profit |P = p(q)|?

The firm should produce |q = - b over 2a = - 225 over {2(- 1 over 50 )} = 5626| units to get the maximal weekly profit.
