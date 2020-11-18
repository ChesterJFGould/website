.EQ
delim ||
define if 'roman "if "'
.EN
# Math 184 Lecture 23/09/20
## Limits Continued

### Example 1
Find |lim from {x -> 0} {sqrt {9 + x} - 3} over x|

|lim from {x -> 0} {sqrt {9 + x} - 3} over x|

|= lim from {x -> 0} {( sqrt {9 + x} - 3)( sqrt {9 + x} + 3)} over {x ( sqrt {9 + x} + 3)}|

|= lim from {x -> 0} x over {x ( sqrt {9 + x} + 3)}|

|= lim from {x -> 0} 1 over { sqrt(9 + x) + 3}|

|= lim from {x -> 0} 1 over { sqrt(9 + x) + 3}|

|= 1 over 6|

### Example 2
Find |lim from {x -> -1} {1 over {3x + 1} + 1 over 2} over {x + 1}|

|lim from {x -> -1} {1 over {3x + 1} + 1 over 2} over {x + 1}|

|= lim from {x -> -1} {( 1 over {3x + 1} + 1 over 2 )2(3x + 1)} over {(x + 1)2(3x + 1)}|

|= lim from {x -> -1} {3x + 3} over {2(x + 1)(3x + 1)}|

|= lim from {x -> -1} 3 over {2(3x + 1)}|

|= - 3 over 4|

## Continuity
A function |y = f(x)| is continuous at a if the following conditions are met

+ |lim from {x -> a} f(x)| exists
+ |f(a)| is defined
+ |lim from {x -> a} f(x) = f(a)|

### Example 1
Consider |y = f(x) = {x sup 2 - 1} over {x + 1}|

This function is not continuous at |x = -1| as it is not defined.

### Example 2
Consider |y = f(x)|| =
left {
matrix {
lcol {
{1 over {x + 1}} above
{-2}
}
lcol {
{if x != -1} above
{if x = -1}
}
}|

This function is not continuous at |x = -1| as |lim from {x -> -1} f(x) != f(-1)|

### Example 3
Consider |y = f(x)|| =
left {
matrix {
lcol {
{{x sup 2 - 1} over {x + 1}} above
{1 over 2}
}
lcol {
{if x != -1} above
{if x = -1}
}
}|

This function is not continuous at |x = -1| as |lim from {x -> -1} f(x) != f(-1)|

### Continuity Rules
Consider |f(x)| and |g(x)| which are continuous at x = a, the following are also continuous at a
+ |f(x) + g(x)|
+ |f(x) - g(x)|
+ |f(x)g(x)|
+ |f(x) over g(x)|, if |g(x) != 0|
+ |(f(x)) sup n| where n is a positive real nmber
+ A polynomial |p(x)| is continuous at all real numbers.
+ A rational function is continuous at any number which is in the domain of the rational function
