.EQ
delim ||
define approx 'roman{"&#8776;"}'
.EN
# Math 184 Lecture 23/10/20
## Compound Interest and Exponential Growth
Suppose that a principal of |P| dollars is deposited in a bank for a term of
|t| years, and earns interest at annual interest rate |r| compounded |n| times
a year.
The bank computes the interest at the end of each period by multiplying the
balance in the account by |r over n|.

The balance at the end of the 1st period is
|P + P cdot r over n = P(1 + r over n )|

Similarily at the end of the 2nd period is
|P(1 + r over n ) + P(1 + r over n ) cdot r over n = P(1 + r over n )(1 + r over n )|

We can generalize this so that after the |i sup th| period the balance is
|P(1 + r over n ) sup i| and after |t| years the balance is |P(1 + r over n ) sup it|

Now we can imagine that the bank keeps increasing the value of |n|, that is to
say |lim from {n -> inf} P(1 + r over n ) sup nt|. This value approaches |Pe sup rt
= A(t)|.

## Example 1
If $500 is borrowed at a 14% annual rate, find the ammount at the end of two ears if
the interest is compounded (i) monthly, (ii) continuously.

(i) |A(2) = 500(1 + 0.14 over 12 ) sup {12 cdot 2}|
|approx 660.49$|

(ii) |A(2) = 500e sup {0.14 cdot 2}|
|approx 661.56$|

Suppose the interest is compounded continuously, then the balance at the end of
|t| years is give by |A(t) = Pe sup rt|, this is called the future value.


## Calculating the Principle Given the Future Value
Given a value of |A| we can calculate |P| by |P = Ae sup -rt|

## Example 2
Find the present value of $10000 to be received in four years if the money can
be invest at 4% annual interest rate compounded continuously.

We can find the principal that should be deposited by the following

|P = 10000e sup {-0.04 cdot 4}|
|approx 8521.44$|
