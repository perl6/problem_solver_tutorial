use v6;

my $file = 'notes1.txt';
my $notes = '';
$notes = slurp $file if $file.IO.r;

say $notes;
my $answer = prompt 'Write a new note? (Just <Enter> for no and - to delete) ';

if    $answer eq '-'    { spurt $file, ''                      }
elsif $answer.chars > 0 { spurt $file, $notes ~ "\n" ~ $answer }
else                    { spurt $file, $notes ~ ''             }
