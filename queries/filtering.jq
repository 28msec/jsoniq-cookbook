jsoniq version "1.0";

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
