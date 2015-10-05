use v6;

my $file = 'notes1.txt';
my $notes = '';
$notes = slurp $file if $file.IO.r;

say $notes;
my $answer = prompt 'Write a new note? (Just <Enter> for no and - to delete) ';

if    $answer eq '-'    { $notes  =  ''            }
elsif $answer.chars > 0 { $notes ~= $answer ~ "\n" }
else                    { exit                     }

spurt $file, $notes; # write notes into a file