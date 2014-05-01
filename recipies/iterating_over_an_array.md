To iterate over the elements in an array, you might do something like:
```jsoniq
let $a := [ 1, 2, 3 ]
for $i in $a
return ( "x", $i )
```
(The concatentation of the ``"x"`` makes it easy to see the individual array elements.) However, if you run this, you get:

```
x[ 1, 2, 3 ]
```
  
That's because arrays in JSON (and hence JSONiq) are individual things, i.e., an array. To iterate over the individual elements of an array, we need to flatten the array, i.e., turn it into a sequence of elements. This can be done by appending ``()`` to the array:
```jsoniq
let $a := [ 1, 2, 3 ]
for $i in $a()        (: note use of () at end :)
return ( "x", $i )
```

```
x 1 x 2 x 3
```
