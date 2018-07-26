<Query Kind="Program" />

IEnumerable<(int, string)> Frequencies (string[] words) {
    var frs = words
        .GroupBy (s => s.ToUpper())          .Dump("GroupBy") 
        .Select (g => (g.Count(), g.Key))    .Dump("Select")
        .OrderByDescending (kc => kc.Item1)  .Dump("OrderByDescending")       
        // ...
		;
    return frs;
}


void Main() {
    string[] words = { "dd", "DD", "ccc", "AA", "aa", "Aa", "CCC", "bb", "aA", };
    var frs = Frequencies (words);
    frs.Dump ("frs");
}