.EQ
delim ||
.EN
.EQ
define sec 'roman "sec "'
.EN
.EQ
define tan 'roman "tan "'
.EN

# Math 184 Lecture 05/10/20 Notes

## Example 1
let |f(x) = sec x|.
Find |f''(x)|.

|f''(x) = {d sup 2} over {dx sup 2} f(x)|

|= f sup 2 (x)|

|= d over dx (sec x)(tan x)|

|= d over dx (sec x) times (tan x) + (sec x) times d over dx (tan x)|

|= (sec x)(tan sup 2 x) + sec sup 3 x|

## Derivatives as rates of change
The rate of change of |f(x)| at |x = a| is |f'(a) = lim from {x -> a} {f(x) -
f(a)} over {x - a}|.

The marginal cost is the derivative of the cost function.

|M(q) = C'(q)|
|= dC over dq|

The marginal revenue is the derivative of the revenue function.

|MR(q) = R'(q)|
|= dR over dq|

The marginal profit is the derivative of the profit function.

|MP(q) = P'(q)|
|= dP over dq|

## Example 2
Consider the profit function |P(q)|.
At production level |q = a|, the marginal profit at this production level at
|q = a| is given by |MP(q) = P'(a)|<br> |= lim from {q -> a} {P(q) - P(a)} over {q - a}|.

+ If |P'(a) > 0|, then |P'(a) = lim from {q -> a} {P(q) - P(a)} over {q - a} > 0|.
	Therefore we know that |P(q) > P(a)| if |q > a|, i.e. increasing production
	level increases profit.
+ If |P'(a) < 0|, then |P'(a) = lim from {q -> a} {P(q) - P(a)} over {q - a} < 0|.
	Therefore we know that decreasing production level will increase our profit.
	
## Example 3
Demand equation: |q = -50p + 20000|

Cost function: |C(q) = 100q + 200000|

### (a) Find the marginal profit function.

|P(q) = R(q) - C(q)|
|= pq - (100q + 200000)|

Since |q = -50p + 20000|, we get |p = - 1 over 50 q + 400|.
Therefore we get

|P(q) = (- 1 over 50 q + 400)q - (100q + 200000)|
|= - 1 over 50 q sup 2 + 300q - 200000|

The marginal profit function is therefore |P'(q) = - 1 over 25 q + 300|

### (b)

#### i. Should the company increase its production level?

The current production level is 2000 units per month.

The marginal profit function is given by |MP(q) = P'(q) = - 1 over 25 q + 300|.

|MP(2000) = - 1 over 25 (2000) + 300|
|= 220 > 0|

Therefore the company should increase its production level to get better profit.

#### ii. Should the company increase its unit price?

Given we know that the company needs to increase its production level to get a
better profit, and that if the company decreases the unit price the demand will
increase, the company should decrease the unit price to increase profit.

Another way of proving this is . From part **a** we know |P(q) = - 1 over 50 q sup 2 + 300q - 200000|.

|P(p) = - 1 over 50 (-50p + 20000) sup 2 + 300(-50p + 20000) -200000|
|= -50p sup 2 + 35000p - 220000|

|P'(p) = d over dp (-50p sup 2 + 35000p - 220000)|
|= -100p + 35000|

At q = 2000 we know |2000 = -50p + 20000|, giving us |p = 360|.

|P'(360) < 0|, therefore the company should decrease the unit price.
