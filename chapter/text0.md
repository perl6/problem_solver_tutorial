

[Chapter 0](../table-of-content.md)
===================================


   * [goals](#goals) and [methods](#teaching-method)
   * [what app to build](#what-app-to-build)
   * [chapter layout](#chapter-layout)
   * [prerequisites](#prerequisites)
   * [Perl philosophy](#perl-philosophy)
   * [basic syntax rules](#basic-syntax-rules)
   * [first tiny example: hello math !](#first-example)



[Goals](#chapter-0)
-------------------

Welcome,
to this hands on tour through the more often needed parts of this vast and
beautiful programming language. You can find here:

   - syntax knowledge
   - bits of deeper understanding for the design decisions
   - room for own experiments
   - a hopefully useful application
   - a taste of the full capabilities of Perl 6
   - sources for further learning (docs and more)



[Teaching Method](#chapter-0)
-----------------------------

While action takes place between "you and your computer", we try to give you
the feel that someone is guiding you in a real-world programming situation.
We think that this will be way more human, interesting and educational,
than "talking in class room about driving cars".
You will be able to follow a train of thought from the first strategic decisions,
to the selection process of finding the most suitable Perl feature, to the
following trying out of several ways to formulate it, up to the polishing edits.
A final evaluation helps to understand, what has been achieved.

That sounds like lot of text - but we actually try to keep it concise as possible.
Links to more detailed information will be provided on the spot needed.
The tutorial also advances with a rather fast pace. Therefore we encourage you to
reread a chapter or paragraph, if you felt like not fully understanding it.
Or you follow the trail of code snippets in a chapter. Running them as oneliner,
and and using them ot the main program as basis of explorations might be your
favorite learning style. Rereading a chapter after that also clarifies a lot.
When an explanation still doesn't makes sense to you - please let us know via github.

The flip side of this practical, yet dense approach: you (mostly) have to stick
with the given order and won't be able to skip even several sentences without
risking to miss the introduction of an important feature, which will be premised
over and over. This is especially true during chapter 2-6 and an inevitable
side effect of developing one example program throughout the whole tutorial.
While we strongly recommend to adapt it to your wishes, you should be be aware,
that maintaining your modifications through the chapter can be a demanding task.



[What App To Build](#chapter-0)
-------------------------------
What kind of program could be valuable to many and also highlights Perls strengths?
I think a note manager! Yes there are plenty ones out there, but we can do a very
versatile one, can serve as a todo-list or vocabulary trainer or plainly as a tool,
that helps you not getting lost in information overflow.

Sifting through all sort of data and especially text, building complex
data structures with easy
manages information you found interesting
 that help you to 
 - because information overload is an issue

 does that. It might sound like a boring Yet another
..., but organizing our stuff is something we all face as soon we have more than
one 

----
   !!! from here on the text is in raw state !!!
----

useful
textinfo age
keep organized
multi purpose



[Chapter Layout](#chapter-0)
----------------------------

The practical needs of the growing application shaped the content and ordering
of the chapter, sometimes even overruling the educational intents of the author.
Nonetheless there is a golden thread and the menu (table of contents) as the
index show where to find what.

Every chapter has a main topic and several (mostly 6), often related subtopics.
Together they allow to bring the program to a new stage, introducing a new
feature set or a new style of programming. The source code in each stage is
included (see table of content). Numbers in file names refer to a chapter.

Each chapter has several paragraphs. They correspond to the subheadings in the table
of content and cover only a single command, operator or another language feature. 
Usually they have just the right length to be read in 5 to 10 minutes.
After that the tutorial can be easily put aside. 

Chapters are also optimized for reading them in one swoop. The first paragraph(s)
are commonly an easy read - a warm up to get accustomed to the topic.
The most challenging part is iusually n the middle, while the end serves as a
fade out and for recap.



[Prerequisites](#chapter-0)
--------------------------

   - curiosity:
   - few programming basics:
     What are variables or statements - things of that nature.
     Even computer science terms are used, they get introduced in common English.
     So a keen mind is whats really needed.
   - any editor:
   - any shell:
     to run the scripts (unless you can do it from inside the editor)
   - an open browser connected to the net


   
[Perl Philosophy](#chapter-0)
-----------------------------

The big banner of Perl was always TIMTOWDTI: There Is More Than One Way To Do It!
Larry Wall realized: it is impossible to forsee all situations you may encounter.
Therefore providing overlapping choices how to solve your issue is a good thing.
But good choices are based on lots of thought and/or experience. That means:
You get treated as an adult (your views are taken seriously) and you have to act
as an adult (learn and consider consequences).

One way Perl 6 differs greatly from Perl 5: it has better training wheels.
Even the second slogan went already: "Keep the easy stuff easy" - a lot of
improvements were done in this field. Every day matters require less fumbling
and knowledge and the necessary commands are named very straight forward.
Special cases were eliminated ruthlessly and replaced with recurring principles.
You will get surprisingly far in Perl with a very limited subset of the language.

However the full sentence goes: "Keep the easy stuff easy and hard possible."
All the heavy weapons are still there and some new, more powerful ones.
It includes full access to many detail workings, including all the internals,
allowing you to mold Perl 6 into whatever can imagine.
As a safeguard many of these possibilities need some extra wording and a syntax,
that is signaling its harmful potential.

The hardest part of the second slogan is the word "and". Main challenge for the
designers was it to create a language that is very supportive and forgiving to
beginners and yet at the same time not dumbed down, but powerful and expressive.
As we know from experience: pushing a dent into a waterbed, makes the water just
bulge all other places. Analogous: if you forbid komplex commands, your program
gets complex in different ways, if its the nature of the problem you try to solve.
For instance: we could forbid power an multiplication and reduce "2 to the power 
of 2" into 2 + 2. Nice and simple. But reducing "27 to the power of 9" into sums -
you easily loose overview and get trapped in wearing and repetitive tasks.
So it actually helps you to write easy to to understand code if you take your time,
learning what power is.

The creator of Perl believe in the joy of experimenting and learning and that
programming can be a vocation, a work of love which is only if fulfilling,
if your free to follow you intuition and also the desire when to learn what.

Being a fusion of passion and logic - Perl 6 employs inwardly many principles
and concepts from computer science. On the outside, however, it appears almost
like a human language. It not only borrows many words from simple English like
use, do, whenever, take ... and so forth, it also tries to get the use and feel
of a natural language - allowing you to express yourself to the computer in the
way you do the rest of the day.



[Basic Syntax Rules](#chapter-0)
--------------------------------
Mostly under Unix type operating systems like Linux, Irix, MaxOS and BSD you
can call text files like binary programs.

Every Perl 6 program starts 
----
   !!! from here on the text is in raw state !!!
----
#!/path/to/perl6
`use v6;`
new line
semicolon
white space
braces
slashes



[First Example](#chapter-0)
--------------------------

not explaining details

 
`say 'Result: ', EVAL prompt 'Your Math Question? ';`

`say slurp $?FILE;`


[^chapter start^](#chapter-0)

[^^table of content^^](../table-of-content.md)

