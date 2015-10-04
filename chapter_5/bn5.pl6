use v6;

my $file = 'notes5.txt';
my @note = ();
if $file.IO.r {
    for lines $file.IO -> $line {
        push @note, { content => $line, written => '', attr => [] }
    }
}

my token pos   { \d+ }
my token msg   {  .+ }
my token space { \s* }
my token bump  { <.space> [ \: | \. | \| ] <.space>}

say 'Press h and <Enter> for help, just <Enter> to exit.';
loop {
    for @note.kv {say "$^nr : $^text"}

    given prompt 'Write a new note? ' {
        when ''                     { last }
        when 'da'                   { @note = () }
        when /^\s <.space> <msg>/   { push @note, $/<msg> }
        when /^ a <.space> <msg>/   { push @note, $/<msg> }
        when /^ p <.space> <msg>/   { unshift @note, $/<msg> }
        when /^ r <.space> <pos>/   { splice @note, $/<pos>, 1 if 0 <= $/<pos> < +@note }
        when /^ i <.space> <pos> <bump> <msg>/ {
            splice @note, $/<pos>, 0, $/<msg> if 0 <= $/<pos> <= +@note
        }
        when /^ c <.space> <pos> <bump> <msg>/ {
            @note[<pos>] = $/<msg> if 0 <= $/<pos> < +@note
        }
        when /^ m <.space> <pos> <bump> <pos>/ {
            if 0 <= $/<pos>[0] < +@note and 0 <= $/<pos>[1] < +@note {
               splice( @note, $/<pos>[1], 0, splice( @note, $/<pos>[0], 1));
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

spurt $file, join("\n", @note); # write notes into a file
