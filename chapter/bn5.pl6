use v6;

my $file = 'notes5.txt';
my Hash @note = read_notes( $file );


my token msg   {  .+ }
my token pos   { \d+ }
my token bump  { <.ws> [ \: | \. | \| ] <.ws>}

say 'Press h and <Enter> for help, just <Enter> to exit.';
loop {
    for @note.kv {say "$^index : $^note<content> "}

    given prompt 'Write a new note? ' {
        when ''                     { last }
        when 'da'                   { @note = () }
        when /^\s <.ws> <msg>/      { create_note(@note, $<msg>) }
        when /^ a <.ws> <msg>/      { create_note(@note, $<msg>) }
        when /^ p <.ws> <msg>/      { create_note(@note, $<msg>, 0) }
        when /^ r <.ws> <pos>/      { splice @note, $<pos>, 1 if 0 <= $<pos> < +@note }
        when /^ c <.ws> <pos> <bump> <msg>/ { @note[<pos>]<content> = $<msg> if 0 <= $<pos> < +@note }
        when /^ i <.ws> <pos> <bump> <msg>/ { create_note($<msg>, $<pos>) }
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

write_notes( $file, @note);



sub create_note ( Hash @note, $msg, Int $pos? =  @note.elems){
    if 0 <= $pos <= +@note { splice @note, $pos, 0, { content => $msg } }
    else                   { say 'index outside the array range' }    
}

sub read_notes ($file --> Array[Hash] ) {
    my Hash @note = ();
    if $file.IO.r { create_note(@note, $_ ) for lines $file.IO }
    return @note;
}

sub write_notes ($file, Hash @note) {
    spurt $file, join("\n", map { $_<content> }, @note);    
}