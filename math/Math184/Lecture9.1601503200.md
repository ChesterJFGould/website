.EQ
delim ||
.EN
# Math 184 Lecture 30/09/20
## Differentiation
### Continuity and Differentiation
If |f prime (a)| exists then |f| is differentiable at |x = a|.
If |f prime (a)| is differentiable at |a| then |f(a)| is continuous at |x = a|

|lim from {x -> a} (f(x) - f(a)) = lim from {x -> a} ({f(x) - f(a)} over {x - a})(x - a)|

|= 0|

If |f(x)| is continuous at |x = a|, then |f(x)| may not be differentiable at |x = a|.
For example consider |f(x) = \(ba a \(ba|

|lim from {h -> 0 sup +} f prime (0) = 1|

|lim from {h -> 0 sup -} f prime (0) = -1|

Therefore |f prime (x)| is not continuous at |x = a| and |f(x)| is not continuous at |x = a|

### Rules of Differentiation
+ |d over dx c = 0|, where |c| is a constant
+ |d over dx (f(x) +- g(x)) = d over dx f(x) +- d over dx g(x)|
+ |d over dx cf(x) = c(d over dx f(x))|, where |c| is a constant
+ |d over dx (f(x)g(x)) = g(x) d over dx f(x) + d over dx g(x)f(x)| 
+ |d over dx 1 over f(x) = - {d over dx f(x)} over {f sup 2 (x)}|
+ |d over dx f(x) over g(x) = {g(x) d over dx f(x) - d over dx g(x)f(x)} over {g sup 2 (x)}|
+ |d over dx x sup n = nx sup {n - 1}|, where |n| is a constant
+ |d over dx c sup x = ln(c)c sup x|, where c is a constant
+ |d over dx log sub c x = 1 over {x ln(c)}|, where |c| is a constant
+ |d over dx f(g(x)) = f'(g(x)) * g'(x)|
+ |dy over dx = dy over du * du over dx|, same as previous
+ |d over dx sin(x) = cos(x)|
+ |d over dx cos(x) = -sin(x)|
+ |d over dx tan(x) = sec sup 2 (x)|
+ |d over dx cot(x) = -csc sup 2 (x)|
+ |d over dx sec(x) = sec(x)tan(x)|
+ |d over dx csc(x) = -csc(x)cot(x)|
