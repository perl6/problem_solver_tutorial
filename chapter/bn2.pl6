use v6;

my $file = 'notes2.txt';
my @note;
@note = lines $file.IO if $file.IO.r;

say 'Press h and <Enter> for help, just <Enter> to exit.';
loop {
    loop (my $index = 0; $index <= @note.end; $index++) {
        say $index, ' : ', @note[$index];
    }

    my $answer = prompt 'Write a new note? ';
    last if $answer.chars == 0;

    my $command = substr( $answer, 0, 1);
    my $new_note = substr( $answer, 1);

    given lc $command {
        when ' ' { push @note, $new_note }
        when 'a' { push @note, $new_note }
        when 'p' { unshift @note, $new_note }
        when 'r' { splice @note, +$new_note, 1 if 0 <= +$new_note < +@note }
        when 'd' { @note = (); }
        default  { say 'first letter: [ ] or [a]ppend (msg), [p]repend (msg),' ~
                        "m, [r]emove (nr), [d]elete <All>"
        }
    }
}

spurt $file, join("\n", @note); # write notes into a file
