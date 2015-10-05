

#Perl 6 for problem solver - Chapter 4


   * hash variables
   * anonymous hashes for nested structure (AoH)
   * regex with named captures
   * named capture variables
   * list manipulation with `map`


    $/[0] $()/[0] $0
    style for first,  last easy to overlook

$/<msg> aka $<msg>

        when /^ r \s* (<digit>)/    { splice @note, $/[0], 1 if 0 <= $/[0] < +@note }
        when /^ r \s* <digit>+/   { splice @note, $/<[0], 1 if 0 <= $/[0] < +@note }

my token pos { \d+ }        
