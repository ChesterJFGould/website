.EQ
delim ||
define approx 'roman{"&#8776;"}'
.EN
# Math 184 Lecture 26/10/20
## Example 1
Investment A is worth 70000$, and is growing at a rate of 13% per year
compounded continuously.

Investment B is workth 60000$ and is growing at a rate of 14% per year
compounded continuously.

How many years will it take for A and B to have the same value?

Investment A will have the following value after |t| years

|70000e sup {0.13t}|

Similarily investment B will be worth the following after |t| years

|60000e sup {0.14t}|

Now we just find when the two are equal

|70000e sup {0.13t} = 60000e sup {0.14t}|
|7 over 6 = {e sup {0.14t}} over {e sup {0.13t}}|
|= e sup {0.14t - 0.13t}|
|= e sup {0.01t}|
|ln 7 over 6 = 0.01t|
|t = {ln 7 over 6} over 0.01|

## Exponential Growth and Decay
We use the formula |pe sup rt| to model continous interest.

When |r > 0| we call this exponential growth, and when |r < 0| we call this
exponential decay.

## Example 2
After 3 days a sample of radon-222 decays to 58% of its original amount.

(a) What is its half-life?
|e sup {3r} = 0.58|
|r = {ln 0.58} over 3|
|approx -0.18|

|e sup {rt} = 0.5|
|t = {ln 0.5} over r|
|approx 3.8|

Therefore the half-life is approximately 3.8 days.

(b) How long would it take the sample to decay to 10% of its original amount.

We already know |r| from (a) so we can just solve the following equation for |t|

|e sup {rt} = 0.1|
|t = {ln 0.1} over r|
|approx 12.7|

Therefore it would take about 12.7 days for the sample of radon to decay to 10%
its original amount.
