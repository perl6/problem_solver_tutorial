cd ..


[Chapter 0](../table-of-content.md)
===================================


   * [goals](#goals) and [methods](#teaching-method)
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

   - syntax knowledge:
   - bits of deeper understanding for the design decisions:
   - room for own experiments:
   - a hopefully useful application:
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
with the given order and won't be able to skip even several sentences.
Because then you overlook the introduction of an important feature, which will be
premised over and over. This is especially true during chapter 2-6 and an inevitable
side effect of developing one example program throughout the whole tutorial.
While we strongly recommend to adapt it to your wishes, you should be be aware,
that maintaining them through all changes can be a demanding task.



[Chapter Layout](#chapter-0)
--------------------------

The practical needs of the growing application did sometimes overrule the
educational intents of the author. Nonetheless there is a golden thread 
and the menu(table of contents) as the index as well show where to find what.

Every chapter has a main topic and several (mostly 6) (often related) subtopics.
Together they allow to bring the program to a new stage, introducing a new
feature set or a new style of programming. The source code in each stage is
included (see table of content). Number in file names refer to a chapter.

Each chapter has several paragraphs. They correspond to the subheadings in the table
of content and covers only a single command, operator or another language feature. 
Usually they have just the right length to be read in 5 to 10 minutes.
After that the tutorial can be easily put aside - to practice the new knowledge
or to leave the train. 

Chapters are also optimized for reading them in one swoop. The first paragraph(s)
are commonly an easy read - a warm up to get accustomed to the topic.
The most challenging part is in the middle, while the end serves as a fade out
and for reflection.



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
This means that Larry Wall is smart enough to realize, that he is not smart enough
to make all decisions for you in advance and that providing choice is a good thing.
But good choices are based on lots of thought and/or experience.
That means: you as a person and your views are taken seriously.
You get treated as an adult. But sometimes you have to be an adult
(programming wise) to use Perls enormous power wisely.

One way Perl 6 differs greatly from Perl 5: it supplies better training wheels.
Meaning: the usual matters are straight forward. Even the second slogan was
also always: "Keep easy stuff easy" - a lot of improvements were done in this field.
On one hand in requiring less knowledge and fumbling for some common operations.
On the other hand in delivering an outrageously unsuspicious syntax and keeping
our perlish specialties as the other option in the backyard (TIMTOWTDI).

However the full sentence goes: "Keep the easy stuff easy and hard possible."



----
   !!! from here on the text is in raw state !!!
----

natural language



[Basic Syntax Rules](#chapter-0)
--------------------------------

white space
semicolon
braces


[First Example](#chapter-0)
--------------------------

not explaining details

`use v6;`
 
`say 'Result: ', EVAL prompt 'Your Math Question? ';`



[^chapter start^](#chapter-0)

[^^table of content^^](../table-of-content.md)

