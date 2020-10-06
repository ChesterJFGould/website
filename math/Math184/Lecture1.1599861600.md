.EQ
delim ||
define if 'roman "if "'
.EN
# Math 184 Lecture 11/09/20
## Example to motivate learning of Calculus
Suppose that a firm has a fixed cost of F dollars, a production cost in l dollar/unit, and let q be the quantity that consumers will demand at a selling price of p dollars/unit.

+ let |F =| fixed cost
+ let |l =| production cost in $/unit
+ let |q =| consumer demand
+ let |p =| selling price $/unit

Cost function: |C(q) = F + lq|

Revenue function: |R(q) = pq|

Profit function: |P(q) = R(q) - C(q)|

### Q1
How should the firm operate to maximize the profit P(q)?

If |P(q) = -2q sup 2 + 100q + 3| for |q = 1|, easy.

If |P(q) = -q sup 3 + 2q sup 2 + 1| for |1 <= q <= 3|, hard.

### Q2
A break-even point q is defined as the value q which satisfies the following equation.

|C(q) = R(q) or P(q) = 0|

## Functions
Functions are analagous to a machine where you put a number in and get a number out.

Consider the function |f(x) = 2x sup 2 - 3|.
For f(4) we first square 4, multiply that by 2, then subtract 3 giving us 29.
Pretty simple.

### Piecewise functions
Piecewise functions are analagous to a machine that applies a specific function depending on which number is put in.

Consider the following piecewise function.
	
|f(x) =
left {
matrix {
lcol {
{x + 2} above
{2x - 5}
}
lcol {
{if x >= 1} above
{if x < 1}
}
}|
	
If |x = 6| then |f(6) = 6 + 2 = 8|

If |x = -1| then |f(-1) = 2(-1) - 5 = -7|
	
#### Q1
Which function should we use for |f( pi )|?

We use |f( pi ) = pi + 2| as | pi >= 1|

### Graph of a function
[Check 'em out](https://en.wikipedia.org/wiki/Graph_of_a_function)

A filled in points on the graph represents a point on the function.
A circle that's not filled in represents a point that isn't on the function.

## Kinds of functions
### Exponential Function
A function of the form |y = f(x) = b sup x|, where b is a constant, |b > 0|, and |b != 1|.
[Look at 'em](https://en.wikipedia.org/wiki/Exponential_function)

#### Examples:
- |y = 2 sup x|
- |y = 1 over 3 sup x = 3 sup -x|

The function |y = e sup x| is special and is called the natural exponential function

#### Properties
+ |(b sup {x sub 1})(b sup {x sup 2}) = b sup {x sub 1 + x sub 2}|
+ |{b sup {x sub 1}} over {b sup {x sub 2}} = b sup {x sub 1 - x sub 2}|
+ |(b sup {x sub 1}) sup m = b sup {m x sub 1}|
+ |b sup 0 = 1|, no |0 sup 0| doesn't equal |1|
