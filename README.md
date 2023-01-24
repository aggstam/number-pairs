# number-pairs

Detect all number pairs in a list based on a predefined relation between them. 
<br>
In this example we assume we look for number pair where A = 3 * B.
<br>
Implementation requires *prolog* to be installed.

# Execution example
```
❯ swipl -s number_pairs.pl

?- find_pairs([5, 15, 20, 45], Pairs, Waste).
Pairs = [[5, 15], [15, 45]],
Waste = [20] .

```
