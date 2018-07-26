"use strict"

var Enumerable = require('linq-es2015')

function Frequencies (words) {
    let frs = Enumerable.asEnumerable(words)
        .GroupBy (s => s.toUpperCase()) 
        .Select (g => [g.length, g.key])
        .OrderByDescending (kc => kc[0])       
        // ...
        .ToArray ()
    return frs
}
function Main() {
    let words = [ "dd", "DD", "ccc", "AA", "aa", "Aa", "CCC", "bb", "aA", ]
    let frs = Frequencies (words)
    frs.forEach (kc => console.log (kc[0].toString(), kc[1]))
}

Main()
