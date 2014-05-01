To add a new key-value pair to an object (or more generally, to merge two objects), use the Merging Object Constructor `{| |}`. For example:
```jsoniq
let $x := { "x" : 1 }
let $y := { "y" : 2 }
return {| $x, $y |}
```

```
{
  "x" : 1,
  "y" : 2
}
```
 
A caveat of using `{| |}` is that duplicate keys raise an error. To work around this, we can write a function that adds a key with a default value only if no such key already exists:
```jsoniq
declare function local:add-default( $obj as object, $key as string,
                                    $value as item )
  as object
{
  if ( exists( $obj.$key ) )
  then $obj
  else {| $obj, { $key : $value } |}
};
```

To add a new key-value pair or to replace the value of an existing key, a more involved function is needed:
```jsoniq
declare function local:add-or-replace( $obj as item, $key as string,
                                       $value as item )
  as item
{
  {|
    for $k in keys( $obj )
    where $k ne $key
    return { $k : $obj.$k }, (: note the ',' to create a sequence :)
    { $key : $value }
  |}
};
```
The for-where-return copies all the keys except for the one given by `$key` (if any), then adds in the key-value pair.
