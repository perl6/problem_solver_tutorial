

#Perl 6 for problem solver - Chapter 4


   * ternary op: `?? !!`
   * loops: `for`, `last`
   * pointy block syntax `->`
   * regular expression with `^`, `.`, `\s`, `\d`, `*`, `+`, `()`
   * positional capture variables
   * numeric context: `+`
   * chained comparisons
   * heredoc's with `q`, `to`


    $/[0] $()/[0] $0
    style for first,  last easy to overlook

$/<msg> aka $<msg>

        when /^ r \s* (<digit>)/    { splice @note, $/[0], 1 if 0 <= $/[0] < +@note }
        when /^ r \s* <digit>+/   { splice @note, $/<[0], 1 if 0 <= $/[0] < +@note }

my token pos { \d+ }        
