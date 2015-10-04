use v6;

my $file = 'notes3.txt';
my @note = $file.IO.r ?? lines $file.IO !! ();

say 'Press h and <Enter> for help, just <Enter> to exit.';
loop {
    for @note.kv {say "$^nr : $^text"}

    given prompt 'Write a new note? ' {
        when ''                  { last }
        when 'da'                { @note = () }
        when /^ \s+(.+)/         { push @note, $0 }
        when /^a\s*(.+)/         { push @note, $0 }
        when /^p\s*(.+)/         { unshift @note, $0 }
        when /^c\s*(\d+)\:(.+)/  { @note[$0] = $1 if 0 <= $0 < +@note }
        when /^i\s*(\d+)\:(.+)/  { splice @note, $0, 0, $1 if 0 <= $0 <= +@note }
        when /^r\s*(\d+)/        { splice @note, $0, 1 if 0 <= $0 < +@note }
        when /^m\s*(\d+)\:(\d+)/ {
            if 0 <= $0 < +@note and 0 <= $1 < +@note {
               splice( @note, $1, 0, splice( @note, $0, 1));
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
