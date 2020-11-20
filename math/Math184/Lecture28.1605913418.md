.EQ
delim ||
.EN
# Math 184 Lecture 20/11/20
## Finding Horizontal Asymptotes
Consider f(x) = |{3x sup 6 + 5x sup 5 - 1} over {-8x sup 6 - x sup 2 - 2x}|.
Find the HA(horizontal asymptotes) of |f(x)|.

We need to evaluate |lim from {x -> inf} f(x)| and |lim from {x -> - inf} f(x)|.

|lim from {x -> inf} f(x)|
|= lim from {x -> inf} {3x sup 6 + 5x sup 5 - 1} over {-8x sup 6 - x sup 2 - 2x}|

To evaluate this we divide both the numerator and denominator by the highest
power of x that is contained in the fraction.

|= lim from {x -> inf} {(3x sup 6 + 5x sup 5 - 1)/{x sup 6}} over {(-8x sup 6 - x sup 2 - 2x) / {x sup 6}}|
|= - 3 over 8|

Now consider |g(x) = {3x sup 5 + 5x sup 4} over {-8x sup 6 - x sup 2 + 2x}|

|lim from {x -> inf} {3x sup 5 + 5x sup 4} over {-8x sup 6 - x sup 2 + 2x}|
|= lim from {x -> inf} {(3x sup 5 + 5x sup 4)/{x sup 6}} over {(-8x sup 6 - x sup 2 + 2x)/{x sup 6}}|
|= - 0 over 8|
|= 0|

Finally consider |h(x) = lim from {x -> inf} {3x sup 6 + 5x sup 5} over {-8x sup 4 - x + 1}|

|lim from {x -> inf} {3x sup 6 + 5x sup 5} over {-8x sup 4 - x + 1}|
|= lim from {x -> inf} {(3x sup 6 + 5x sup 5 )/x sup 6} over {(-8x sup 4 - x + 1)/x sup 6}|
|= - inf|

Therefore |h(x)| has no horizontal asymptote.
