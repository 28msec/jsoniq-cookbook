To select a subset of key-value pairs from an object (perhaps with many key-value pairs), we can use the built-in ``project()`` function:

```jsoniq
let $crew := {
  "Captain" : "Kirk",
  "First Officer" : "Spock",
  "Engineer" : "Scott",
  "Doctor" : "McCoy",
  "Communications Officer" : "Uhura"
}
return project( $crew, ( "Captain", "First Officer" ) )
```

```json
{
  "Captain" : "Kirk",
  "First Officer" : "Spock"
}
```

The ``project()`` function takes a sqequence of objects to select from and a sequence of keys to select from every object.
