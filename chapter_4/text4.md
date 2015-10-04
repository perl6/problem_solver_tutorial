
$/<msg> aka $<msg>

        when /^ r \s* (<digit>)/    { splice @note, $/[0], 1 if 0 <= $/[0] < +@note }
        when /^ r \s* <digit>+/   { splice @note, $/<[0], 1 if 0 <= $/[0] < +@note }

my token pos { \d+ }        
