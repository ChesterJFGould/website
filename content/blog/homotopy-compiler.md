---
title: "Something I should be able to do, but can't"
date: 2024-08-23T13:32:19-07:00
draft: false
front_page: true
---

The word "should" will be used a lot in the following post.

I should be able to tell Agda (or &lt;insert language with theorem proving capabilities here&gt;) how to compile my data types.
The compiler already uses some heuristics to choose an isomorphism between my inductive types and their runtime representation, so I should just be able to make its life easier and give it one.

Here's the vibes for what I should be able to write

    -- Agda should provide this universe of runtime types
    RuntimeCode : Set
    RuntimeEl : RuntimeCode -> Set

    data MyBool : Set where
      MyTrue : MyBool
      MyFalse : MyBool

    myBoolCode : RuntimeCode
    myBoolCode = Refinement QWord (\x -> Either (x = 0) (x = 1))

    there : MyBool -> RuntimeEl myBoolCode
    there MyTrue = MkRefinement 1 (Right Refl)
    there MyFalse = MkRefinement 0 (Left Refl)

    andBackAgain : RuntimeEl myBoolCode -> MyBool
    andBackAgain (MkRefinement 1 (Right Refl)) = MyTrue
    andBackAgain (MkRefinement 0 (Left Refl)) = MyFalse

    {-# RUNTIME_REPRESENTATION MyBool myBoolRuntimeRep #-}
    myBoolRuntimeRep : Iso MyBool (RuntimeEl myBoolCode)
    myBoolRuntimeRep = MkIso there andBackAgain
    -- plus proofs that going there and back again is id

I don't have this totally worked (or even kind of worked out), but this should be something that I can do in a language with the kind of power that Agda does.
Of course this could be extended further, I should be able to give Agda some assembly code with a proof that it correctly implements a function.
