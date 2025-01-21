---
title: "Are True Propositions \"The Same\"?"
date: 2025-01-20T22:36:59-08:00
draft: false
front_page: true
---

In my philosophy of logic class, a point was made that propositions can't possibly be truth valued expressions since it would mean that all true propositions are "the same".
Later on in the lecture, this point was then dismissed, but my immediate reaction was that this obviously can't be true, since mathematics treats them this way (the point being brought up in the context of "meaning" in linguistics).
And while it may be true, knowing `∀x, y : ℕ. x + y = y + x` is certainly more useful than knowing `⊤`.
However, while I'm sure that this reaction is correct, I haven't been able to articulate why, so I will use todays poast to try and work this out.

I think the answer, as it did in class, comes down to the meta/object language destinction.
In the object language it is the case that `(∀x, y : ℕ. x + y = y + x) = ⊤`, and so to the object language they are "the same".
However, in the meta language they are now humble pieces of syntax which are distinguishable.

I suppose then, what I meant earlier by the former being more "useful" than the latter is this.
During a proof we must of course distinguish a universal quantifier from top, since some proof rules apply to the former and not to the latter.
Therefore proof must take place in the meta language.

This reveals a contradiction I have in my mental model of type theory, where I had always conceived of type theory as a language containing proof and proposition.
Indeed, many proof assistants based on it try to present it this way, but the trick is in letting the user ask the question, `e : A`?
Here, the `:` is a relation in the meta language, it just so happens to be the case that it is decidable, and so the computer can do the "real" proof for you.
I guess the genius of type theory here is that the structure of the expressions in the typing judgment mimic the proof rules for `:` so closely that it is actually almost as if proof and proposition were in the same language.
This may also explain why you can do the opposite in a logical framework, making the syntax for the `:` proof rules feel like writing the expressions themselves.
