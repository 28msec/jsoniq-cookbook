let $crew := {
  "Captain" : "Kirk",
  "First Officer" : "Spock",
  "Engineer" : "Scott",
  "Doctor" : "McCoy",
  "Communications Officer" : "Uhura"
}
return project( $crew, ( "Captain", "First Officer" ) )
