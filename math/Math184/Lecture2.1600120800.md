.EQ
delim ||
define log 'roman "log "'
define if 'roman "if "'
define sec 'roman "sec   "'
.EN
# Math 184 Lecture 14/09/20
## Kinds of Functions Continued
### Logarithmic Functions
A function of the form |y = log sub b x|.

|y = log sub b x| is the same as |b sup y = x|, where b is a contant.

The domain of |y = log sub b x| is |(0, inf )| = |{ x \(ba x > 0 }|.

The range of |y = log sub b x| is |(- inf , inf )|.

The graphs can be found [here](https://en.wikipedia.org/wiki/Logarithm).

#### Properties
+ |log sub b (x sub 1 x sub 2 ) = log sub b x sub 1 + log sub b x sub 2|
+ |log sub b (x sub 1 /x sub 2 ) = log sub b x sub 1 - log sub b x sub 2|
+ |log sub b  x sup m = m log sub b x|
+ |log sub b  b = 1|
+ |b sup {log sub b x} = x|
All x values above are greater than zero, and m is a constant.

#### Example 1
Consider |log sub b x = 1/4|.

Since |b sup {log sub b x} = x|.
We get |x = b sup {log sub b x} = b sup {1 over 4}|

#### Example 2
Consider |3 sup {2x + 5} = 7 sup 6x|.

We know that |{log sub b x} sup m = m log sub b x|.
The value of b doesn't matter so we use 10.
So we take log of both sides and put the exponent in front of the log.

|(2x + 5)log sub 10 = 6x log sub 10 7|.

If we do some factoring we get

|(2 log sub 10 3 - 6 log sub 10 7) x = -5 log sub 10 3|

|x = -(5 log sub 10 3)/(2 log sub 10 3 - 6 log sub 10 7)|

### Inverse Functions
A function |y = g(x)| is the inverse of |y = f(x)| if the following properties are true.

+ The domain of g is the range of f
+ The range of g is the domain of g
+ |g(f(x)) = x|, for x in the domain of f
+ |f(g(x)) = x|, for x in the domain of g

#### Example 1
|y = log sub b x = g(x)| is the inverse function of |y = b sup x = f(x)|.

+ The domain of g is |(0, inf )|, which is the range of f
+ The range of g is |(- inf , inf )| which is the domain of f
+ |g(f(x)) = log sub b b sup x = x log sub b b = x|, refer to Logarithmic functions above.
+ |f(g(x)) = b sup log sub bx = x|

### One-to-One Functions
A functions f(x) is one-to-one if each value of f(x) corresponds to exactly one value of x, i.e. knowing the value of f(x) we can know which value of x was the input.

They're also called [Injective Functions](https://en.wikipedia.org/wiki/Injective_function).

#### Properties
+ if |f(x sub 1 ) = f( x sub 2 )| then |x sub 1 = x sub 2|

#### Horizontal Line Test
A function is one-to-one if there is no horizontal that passes through the graph of the function more than once.

#### Example 1
Consider |y = f(x) = 3x - 4|.
f is a one-to-one function as no horizontal lines pass through the graph more than once.

#### Example 2
Consider |y = f(x) = x sup 2|.
f is not one-to-one as horizontal lines above 0 pass through the graph twice.
I.e. |f(2) = f(-2) = 4|.

### Relating Inverse and One-to-One Functions
If |f(x)| is one-to-one on its domain, then the inverse function |f sup -1 (x)|
of |f(x)| exists and is a function from the range of |f(x)| to the domain of |f(x)|.

Note that |f sup -1 != 1 over f(x)|, |1 over f(x) = (f(x)) sup -1|.

## How to Find the Inverse
Since |f(x) = 3x - 4| is one-to-one, the inverse |f sup -1 (x)| exists.
To find the inverse we perform the following steps.

+ Swap x and y, |x = 3y - 4|
+ Solve the resulting equation, |y = (x + 4)/3 = f sup -1 (x)|

This is very easy for linear equations, but for some functions it will be a lot harder.
