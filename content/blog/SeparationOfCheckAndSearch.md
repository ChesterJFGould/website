---
title: "Separation of Check and Search"
date: 2025-01-21T22:41:19-08:00
draft: false
front_page: true
---

One of the best arguments *against* type theory, as it is incarnated today, is that too much proof search is built into the core calculus.
This of course all stems from that pesky conversion rule.

```
Γ ⊢ e : A    Γ ⊢ A = B
---------------------- (Conv)
      Γ ⊢ e : B
```

The problem here being that the equality judgement doesn't embrace one of the virtues of type theory, being that propositions come with proof terms.
Since the typing derivation has a proof term, and the proof term reflects the typing judgements of the language (basically having one piece of syntax per typing judgement), it is easy to check that a term is well typed.
And more importantly the amount of work it takes to type check a term (ignoring Conv) is reflected in the size of the term itself.
These virtues are broken by the conversion rule, since there is no judgemental equality proof term to guide the checking, and the amount of work to come up with a proof of judgemental equality is certainly not reflected in the proof term for the typing judgement (having basically O(Big) time complexity).

These are certainly problems, and they were articulated well in both [A Logical Framework with Explicit Conversions](https://dlnext.acm.org/doi/10.1016/j.entcs.2007.11.011), and [Quadratic Type Checking for Objective Type Theory](https://arxiv.org/pdf/2102.00905).
But I have another problem to pick with the conversion rule, mainly that it builds *just* enough proof search into the system that it placates the user and so no good tooling for external proof search is built.
Contrast this with [Isabelle](https://isabelle.in.tum.de/), which certainly has problems of its own, but doesn't have proof search for the equational theory over the entire lambda calculus+++ built in.
Instead, Isabelle has excellent tooling for external proof search, and lets you unleash the power and glory of about five different SAT solvers *in parallel* to try and solve whatever problem you may have.
Personally, I'd like to use a type theory with this level of enthusiasm for having the computer aid in writing your program.
But instead, for now, we're stuck with mediocre, complicated proof search built into our core language.
