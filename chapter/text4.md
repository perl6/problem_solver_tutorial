

[Chapter 4](../menu.md)
========================


   * hash variables
   * anonymous hashes for nested structure (AoH)
   * regex with named captures
   * named capture variables
   * list manipulation with `map`
   * smartmatch `~~`
   * ranges (`..`) using `^`


    $/[0] $()/[0] $0
    style for first,  last easy to overlook

$/<msg> aka $<msg>

        when /^ r \s* (<digit>)/    { splice @note, $/[0], 1 if 0 <= $/[0] < +@note }
        when /^ r \s* <digit>+/   { splice @note, $/<[0], 1 if 0 <= $/[0] < +@note }

my token pos { \d+ }        




[^Up^](#chapter-4)

