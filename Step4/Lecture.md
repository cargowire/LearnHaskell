# List Comprehensions

* List - access via Head and Tail
* Array - constant time indexing
* Sets - Requires equality checking to de-duplicate

Mathematics set comprehensions:

{x^2 | x ∈ {1...5}}

Becomes list comprehensions in Haskell:

[x^2 | x <- [1..5]]

'x is taken from the list one to five' is a 'generator'

Multiple generators can be cosnidered as like nested loops.

[(x,y) | x <- [1..5], y <- [3..4]]

    var result = []
    for(x = 1; x <=5; x++)
        for(y = 3; x <=4; y++)
            result.push((x,y))
    return result

Generators can depend on each other.  Filters can also be added:

    let even = x => x `div` 2 == 0
    [x | x <- [1..10], even x]

Any filter (returning boolean) is known as a 'guard'.

## Zip

zip :: [a] -> [b] -> [(a,b)]

Combines two lists into a list of pairs


