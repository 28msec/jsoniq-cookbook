let $a := [ 1, 2, 3 ]
for $i in $a[]        (: note use of [] at end :)
return ( "x", $i )
