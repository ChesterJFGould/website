.EQ
delim ||
.EN
# Math 184 Lecture 25/11/20
## Optimization Example
What is the shortest line segment lying wholly in the first quadrant tangent to
the graph of |f(x) = 1 over x| and its endpoints are on the coordinate axes?

Let |(a, 0)| and |(0, b)| denote the endpoints of the line segment, and denote
its point of tangency by |(x, 1 over x )|.
The length L of the line segment can be given by the following

|L = sqrt {a sup 2 + b sup 2}|

It's enough to minimize |l = L sup 2 =  a sup 2 + b sup 2|.
The slope of this function can be given by
|{1 over x - 0} over {x - a} = f prime (x)| and
|{b - 0} over {0 - a} = f prime (x)|.

As |f prime (x) = - 1 over {x sup 2}|, we get from our first equation that
|{1 over x - 0} over {x - a} = - 1 over {x sup 2}|

|{1 over x - 0} over {x - a} = - 1 over {x sup 2}|
|1 over x cdot x sup 2 = -(x - a)|
|a = 2x|

From our second equation we get the following

|b = a over {x sup 2}|
|= 2 over x|

We can now plug these in to |l| to get |l = 4x sup 2 + 4 over {x sup 2}| where
|x > 0|.
Now we just find the global min of |l| on |(0, inf )|

|dl over dx = d over dx (4x sup 2 + 4 over {x sup 2})|
|= 8x - 8 over {x sup 3}|
|= {8(x sup 3 - 1)} over {x sup 3}|

We can see that |x = 1| is the sole critical point of |l|

|l(0.5) < 0|
|l(2) > 0|

Therefore |l(1) = 8| is the global minimum value of |l| on |(0, inf )|.
Now remember that |l = L sup 2|, therefore the global minimum value of |L| on
|(0, inf )| is |sqrt 8|.
