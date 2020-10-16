.EQ
delim ||
define n( 'left ('
define n) 'right )'
.EN
# Math 184 Lecture 16/10/20
## Logarithmic Differentiation Continued
### Example 1
Find |d over dx ((sin x) sup 2x )|

|y = (sin x) sup 2x|
|ln y = ln (sin x) sup 2x|
|ln y = 2x ln (sin x)|
|{y prime} over y = 2x cdot d over dx ln(sin x) + d over dx 2x cdot ln(sin x)|
|{y prime} over y = {2x cos x} over {sin x} + 2 ln(sin x)|
|y prime = (sin x) sup 2x cdot ({2x cos x} over {sin x} + 2 ln(sin x))|

### Example 2
Find |f prime (x)| where |f left ( x right ) = {(x sup 3 - 1)(3x - 1) sup {1 over 4}}
over {x sup 2 + 4}|.
This function would take a while to derive using the quotient rule, so we can
use logarithmic differentiation to help us out.
Remember |ln ( a over b ) = ln a - ln b|

|ln f left ( x right ) = ln {(x sup 3 - 1)(3x - 1) sup {1 over 4}} over {x sup 2 + 4}|
|= ln (x sup 3 - 1) + 1 over 4 ln (3x - 1) - ln (x sup 2 + 4)|

Now we can just use the difference rule to derive this function.

|d over dx ln f left ( x right ) = d over dx (ln (x sup 3 - 1) + ln (3x - 1) sup {1 over 4} - ln (x sup 2 + 4))|
|{f prime} over f = 1 over {x sup 3 - 1} cdot 3x sup 2 + 1 over 4 cdot 1 over {3x - 1} - 1 over {x sup 2 + 4} cdot 2x|
|= {3x sup 2} over {x sup 3 - 1} + 3 over {4(3x - 1)} - 2x over {x sup 2 + 4}|
|f prime left ( x right ) = f left ( x right ) ({3x sup 2} over {x sup 3 - 1} + 3 over {4(3x - 1)} - 2x over {x sup 2 + 4})|
|f prime left ( x right ) = {(x sup 3 - 1)(3x - 1) sup {1 over 4}} over {x sup 2 + 4}({3x sup 2} over {x sup 3 - 1} + 3 over {4(3x - 1)} - 2x over {x sup 2 + 4})|

## Higher Order Derivatives
|y = f(x)|
|y prime = f prime n( x n) = df over dx = dy over dx|
|f prime prime n( x n) = (f prime n( x n) ) prime = f sup (2) n( x n) = {d sup 2 f} over {dx sup 2}
= {d sup 2 y} over {dx sup 2}|
|f sup (100)  n( x n) = {d sup (100) f} over {dx sup 100} = {d sup 100 y} over {dx sup 100}|

### Example 3
Let |f(x) = e sup 3x|.
Find |f sup (100) (x)|.

|f(x) = e sup 3x|
|f prime (x) = 3e sup 3x|
|f prime prime n( x n) = (f prime n( x n) ) prime = 9e sup 3x|
|f sup (3) (x) = 3 sup 3 e sup 3x|

We can see a pattern, so we can make the following conjecture

|f sup (100) (x) = 3 sup 100 e sup 3x|

Remember although this happens to be correct, this is purely a conjecture and not a proof.
Prooving this is beyond the scope of this class.

## Elasticity
The price elasticity of demand is defined to be the percentage change in demand
|q| divided by the percentage change in price |p|.

|{DELTA q} over q| is the percentage change in demand |q|.

|{DELTA p} over p| is the percentage change in price |p|.

From these we can define elasticity as the following.

|p over q cdot {DELTA q} over {DELTA p}|

Remember that |lim from {DELTA p -> 0} {DELTA q} over {DELTA p} = dq over dp|
