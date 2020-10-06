# Closures, Data, and Functions
I recently came across a really interesting concept while reading
[the wizard book](https://web.mit.edu/alexmv/6.037/sicp.pdf).
The concept is introduced with an implementation of cons, car, and cdr
(or cons, first, and rest, for those using BSL) in Scheme.

	(define (cons a, b)
	        (lambda (f) (f a b)))
	        
	(define (car l)
	        (l (lambda (a, b) a)))
	        
	(define (cdr l)
	        (l (lambda (a, b) b)))

I found this to be fascinating as this essentially uses closures to implement
the concept of a struct.
This also means that you could implement a type system in a language purely
with closures.

Before I started learning lisp I had heard that it really breaks down the
barriers between data and code.
I always assumed this was meant to refer to functions as data, as in macros.
While that is a large part of the power of lisp, and the concept of
representing code as a list structure that is manipulatable in the language
itself is honestly really cool, I can't help but feel that this idea the other
way round, data as functions, is equally as interesting.

Practically using closures as an alternative to structs is probably not a great
idea as it would incur significant overhead. That being said, it seems there
might be something to learn by thinking about data as functions.
