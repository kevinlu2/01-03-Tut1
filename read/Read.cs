using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Text.RegularExpressions;

public class Read {
    public static void Main() {
        try {
            var fname = "_read-test.txt";
            var text = File.ReadAllText (fname);
            Regex rgx = new Regex (@"\s+");  // "\\s+"
            var words = rgx.Replace(text, " ").Trim().Split(' ');
            
            foreach (var w in words) {  // use a ForEach function, e.g for arrays or list
                Console.WriteLine(w);
            }
            
        } catch (Exception ex) {
            Console.WriteLine ($"*** Error: {ex.Message}");
            Environment.ExitCode = 1;
            
        } finally {
            //Console.WriteLine ("\r\n<enter> to exit");
            //Console.ReadLine ();
        }
    }
}
