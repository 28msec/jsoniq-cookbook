To select a sequence of objects that satisfy some criteria, we can use a `predicate expression` to filter the sequence:

```jsoniq
let $books := (
  {
    "title" : "A Brief History of Time",
    "author" : "Hawking, Stephen"
  },
  {
    "title" : "Your Inner Fish",
    "author" : "Shubin, Neil"
  }
)
return $books[ contains( $$.author, "Shubin" ) ]
```

```json
{
  "title" : "Your Inner Fish", 
  "author" : "Shubin, Neil"
}
```

The use of ``[ ]`` and the expression inside is the predicate expression that means in this case: the subset of books where, for each book denoted by ``$$``, the author contains Shubin. The ``$$`` is known as the context item (each item in the sequence). The use of ``[ ]`` and ``$$`` is a short-hand way of writing:

```jsoniq
for $book in $books
return 
  if ( contains( $book.author, "Shubin" ) )
  then $book
  else ()
```

Note that in XQuery, the ``.`` (dot) refers to the context item; in JSONiq, however, the ``.`` is used for object key selection, so ``$$`` is used for the context item instead.
