#Replacing a Value in a Key-Value Pair of an Object

To replace the value of an existing key, we can use a `transform` expression consisting of ``copy-modify-return``:
```jsoniq
let $crew := { "Captain" : "Kirk" }
return 
  copy $temp := $crew
    modify replace value of json $temp.Captain with "Piccard"
  return $temp
```

A caveat of using replace is that a missing key raises an error.
