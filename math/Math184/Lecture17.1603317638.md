.EQ
delim ||
.EN
# Math 183 Lecture 21/10/20
## Elasticity Example
The demand for a product is given by |p = (100 - q over 10 ) sup 2|.
Find the price elasticity of the demand and determine how the price should change
from its current price of 100$.

Remember that elasticity is given by |p over q dq over dp|.

|p = (100 - q over 10 ) sup 2|

Assume that |100 - q over 10 > 0|

|q = -10( sqrt p - 100)|

|E(p) = p over q dq over dp|
|= {(100 - q over 10 ) sup 2} over {-10( sqrt p - 100)} cdot - 5 over {sqrt p}|
|= p over {1000 - 10 sqrt p} cdot - 5 over {sqrt p}|
|= {sqrt p} over {-200 + 2 sqrt p}|

Now we just take |E| at |100|

|E(100) = {sqrt 100} over {-200 + 2 sqrt 100}|
|= - 1 over 18 > -1|

Therefore we should increase the price of the product.

While it is easy to rearrange this demand equation for |q|, it might not always
be so easy.
Therefore we should try to solve this problem without rearranging the equation.

|p = (100 - q over 10 ) sup 2|
|1 = d over dp (p)|
|= d over dp (100 - q over 10 ) sup 2|
|= 2(100 - q over 10 ) cdot d over dp (100 - q over 10 )|
|= 2(100 - q over 10 )(- 1 over 10 dq over dp )|
|= -1 over 5 (100 - q over 10 ) cdot dq over dp|

All we need to know now is the value of |dq over dp| at |q = 100|

|100 = (100 - q over 10 ) sup 2|
|10 = 100 - q over 10|
|q = 900|

|1 = - 1 over 5 (100 - 900 over 10 ) cdot dq over dp|

Since we have set |p = 100|, |dq over dp| now means the derivative of q when
|p = 100|

|1 = -2 cdot dq over dp|
|dq over dp = - 1 over 2|

|E(100) = 100 over 900 cdot - 1 over 2|
|= - 1 over 18|

As we can see, both solutions give us the same answer.
