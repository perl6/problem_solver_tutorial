use v6;

my $file = 'notes6.txt';
my @note = ();
if $file.IO.r {
    for lines $file.IO -> $line {
        push @note, { content => $line }
    }
}

my token msg   {  .+ }
my token pos   { \d+ }
my token bump  { <.ws> [ \: | \. | \| ] <.ws>}

say 'Press h and <Enter> for help, just <Enter> to exit.';
loop {
    for @note.kv {say "$^index : $^note<content> "}

    given prompt 'Write a new note? ' {
        when ''                     { last }
        when 'da'                   { @note = () }
        when /^\s <.ws> <msg>/      { push @note, { content => $<msg> } }
        when /^ a <.ws> <msg>/      { push @note, { content => $<msg> } }
        when /^ p <.ws> <msg>/      { unshift @note, { content => $<msg> } }
        when /^ r <.ws> <pos>/      { splice @note, $<pos>, 1 if 0 <= $<pos> < +@note }
        when /^ c <.ws> <pos> <bump> <msg>/ { @note[<pos>]<content> = $<msg> if 0 <= $<pos> < +@note }
        when /^ i <.ws> <pos> <bump> <msg>/ { splice @note, $<pos>, 0, $<msg> if 0 <= $<pos> <= +@note }
        when /^ m <.ws> <pos> <bump> <pos>/ {
            if 0 <= $<pos>[0] < +@note and 0 <= $<pos>[1] < +@note {
               splice( @note, $<pos>[1], 0, splice( @note, $<pos>[0], 1));
            }     
        }
        default {
            say q:to/END/;
                general format: <1 letter = command> <voluntary space> ...
                append :    note ...    or
                append :  a note ...
                prepend:  p note ...
                insert :  i pos:note
                change :  c pos:note
                move   :  m pos:newpos
                remove :  r pos
                delete :  da           (delete all)
            END
        }
    }
}

spurt $file, join("\n", map( { $_<content> }, @note) );
