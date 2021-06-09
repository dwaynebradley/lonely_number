# LonelyNumber

This is not great Elixir code by any means since I am still learning but is a way of testing this "question of the week" from Cassidy's blog post on 2021/06/06:

https://buttondown.email/cassidoo/archive/it-is-absolutely-imperative-that-every-human/

## Compiling

Do the following to try it out after you have Elixir installed.

```
~$ git clone https://github.com/dwaynebradley/lonely_number.git`
~$ cd lonely_number
~/lonely_number$ iex -S mix
```

This will compile the code in the project and put you in the Elixir REPL. Then there are 2 options for testing:

## Option 1 - LonelyNumberWithGuards:

This method uses the standard `guard` method of checking parameter values on functions:

```
iex(1)> LonelyNumberWithGuards.value(3, 2, 7)
42

iex(2)> LonelyNumberWithGuards.value(2, 2, 7)
7

iex(3)> LonelyNumberWithGuards.value(2, 2, 2)
1
```

## Option 2 - LonelyNumberWithPatternMatch:

This method uses a fairly unique way of pattern matching parameters to make control flow in your code a little cleaner. Here is a blog post explaining how this works way better than I could:

https://elixirschool.com/blog/clean-control-flow-in-elixir-with-pattern-matching-and-immutability/?s=09


```
iex(4)> LonelyNumberWithPatternMatch.value(3, 2, 7)
42

iex(5) LonelyNumberWithPatternMatch.value(2, 2, 7)
7

iex(6)> LonelyNumberWithPatternMatch.value(2, 2, 2)
1
```

Both the `WithGuards` and `WithPatternMatch` options should yeild the same results.
