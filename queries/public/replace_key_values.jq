jsoniq version "1.0";

let $crew := { "Captain" : "Kirk" }
return 
  copy $temp := $crew
  modify replace value of json $temp.Captain with "Piccard"
  return $temp
