ref: https://evrone.com/blog/bram-moolenaar-interview

## Introduction
We had a great talk with Bram Moolenaar, a Dutch computer programmer and an active member of the open-source software community.
Bram is the original author, maintainer, release manager, and benevolent dictator for life of Vim, a vi-derivative text editor
that is very popular among programmers and power users.

Enjoy full interview below!

## The Interview

Evrone: Looking back in time, what did working on Vim mean to you personally?

Bram: An awful lot. I have always liked creating things, but quite often, once something is finished I wonder what to do with
it.  With Vim I can not only use it myself but by making it available publicly very many people can enjoy it. It has made my
name known in the world and indirectly got me a job. These days, now that I am retired, it gives me something interesting,
joyful, and useful to do. Vim is a very important part of my life.


Evrone: In your opinion, is software development closer to art or science? Does it allow deviations from traditional techniques
or do you have to strictly follow the main direction?

Bram: I do not see much science in software development. Science implies there is proof that something is true. In software,
there are a lot of opinions and there is experience, but is there any proof that one programming language is better than
another? Is there proof that object-oriented programming results in better productivity? Most proofs are about performance
measurements, and there are statistics, but hardly any relation to what language a program was written in or what tools were
used. It’s not art either, since the main goal is that software works well, not that it looks nice.  It’s much more of a craft.
And a craftsman uses whatever tools he thinks will get the best result, no matter if they are what everybody else is using or
something different. And a good craftsman makes his own tools when needed. 

 

Evrone: Opening Vim, we can’t miss your call to help children living in Uganda. How did this idea of licensing Vim using the
Careware / Charityware license models come to your mind and how many people can make donations this way?

Bram: I have never wanted to make money from Vim. It started as a hobby and most of the time I had a job that paid well enough.
Except for a few years during which I asked for donations. Still, quite a few people said they thought Vim was worth something,
and other editors were being sold. So I decided to combine my desire to help poor children with that and Charityware was born.
It works well, about 30’000 euro per year is raised this way, which is helping about 50 children finish their education, from
primary school to university. The donations come from a few big sponsors and many small donations.


Evrone: Despite all its flexibility and functionality, Vim is not an intuitive editor, the entry barrier is quite high. If
someone wants to use Vim effectively, they need to spend quite a lot of time learning control commands. What was the reason for
you going this way instead of introducing some "beginner-friendly" mode with a gradual complexity increase?

Bram: Actually, there is a little-known mode where one can just type without knowing all the commands. This is called “Easy
Vim”, or evim. But I suppose it’s not used much, because once you hear of Vim and all the powerful commands, why would you use
a mode that makes it work like any other editor? Obviously, Vim is, just like Vi, something you need to learn to use. For me,
I was more or less forced to, when a practical class in university had only one specific computer available and the only editor
on it was vi. After complaining to the teachers, their solution was to give us a one-page cheat sheet… Without this forced
learning I might never have taken the leap to learn to use Vi, and the course of history would have been very different.

 

Evrone: In recent years we have seen developers ask “will somebody’s code help me solve my current task?”, instead of writing
their own code from scratch. As a result, some applications meet the strict deadlines dictated by businesses but look like
Frankenstein. From your point of view, is such an approach acceptable?

Bram: This usually happens when software is ordered to be made by people who have no insight into the software. I have been
working for a company where quite a few managers, educated in physics and mechanics, thought the software was just the same as
what they knew and they could decide how to make it. That company went downhill and was eventually taken over.  The same happens
in places where decision-makers can get away with failure, such as in government. The people writing the code probably just make
sure they get paid and then run away from the crime scene. On the other end of the scale are people who want to write beautiful
code, spend lots of time on it, and don’t care if it actually does what it was intended to do or what the budget was. Somewhere
in between, there is a balance.

 

Evrone: Two years ago, an experimental fork Vim9 was announced. Could you tell us a bit more about this fork? What is the
current stage of this project?

Bram: Vim9 is not a fork but the next step in making Vim better. I did an experiment at first to see if compiling a function
into byte code would work to make the Vim script much faster. It turned out it worked well, but it did require making changes in
the syntax. That is not an easy choice, supporting two variants of a script language at the same time, but I think it will work
and make plugin writers happy. The legacy syntax will remain, which is why it should not be called a fork. I do not expect all
old Vim scripts to be rewritten in the new syntax, thus we’ll keep supporting the legacy syntax. Even Python took a very, very
long time to get 99% of Python code converted to python 3. And that remaining 1% is still there…

 

Evrone: It's always difficult to maintain backward compatibility because many features can’t be implemented without breaking.
Will Vim9 stick to its principles of backward compatibility, or will it open a new page in the history of Vim?

Bram: Vim9 script is not backward compatible, but the legacy script syntax is also available. One can decide for each file and
each function what syntax to use. This way we have the freedom to make Vim9 script work much better. Still, the two Vim script
variants are close enough that one can write either of them. I have been careful to make sure that when a mistake is made an
error is given to help the user fix it quickly.

 

Evrone: IRC is specified as the community channel on the Vim official website. It’s not that popular nowadays and some junior
specialists have never heard of it. Do you plan to move to more actual Slack or Discord someday to give greater impact to Vim
this way?

Bram: I’m very old-fashioned, my main means of communication is email.  It’s not only that this is what I am used to, but it’s
also because it is not interruptive. I can read and answer messages when I want to, and postpone that when I don’t want to be
interrupted. Of course, users are free to pick whatever works for them, others can organize that. Chat-like communication does
tend to be very noisy though.

 

Evrone: Using plenty of web manuals we can discover great plugins to extend the awesome functionality of Vim. Do you have any
plugin favorites and must-haves you could recommend to our audience?

Bram: I have to admit I don’t use many plugins, other than what is included with the distribution (such as matchit and
termdebug). When I need something I tend to either make a quick hack or add it to the Vim base. That’s the luxury of being the
creator :-).

 

Evrone: Considering your extensive experience, could you share any life hacks for developers on how to maintain productivity
over the years? Thank you!

Bram: No hacks, just some basic rules and advice. One thing I have seen young people do is work very late, and then end up
starting late the next morning. Most people have their most productive time in the morning, therefore it is much better to set
a hard time limit on when to stop. Perhaps make a note of where you were, then relax a bit, get some good sleep and continue the
next morning. Quite often the problem that you were stuck with yesterday suddenly gets a new insight and you know what to do.
The term “sleep on it” actually works, at least it does for me. Another thing is that sometimes what you need is not some clever
solution or endless tweaking of your configuration, but just typing fast. The macro recording and repeating in Vim is often good
enough to do something 200 times. How much time would you need to write a plugin for that?

## The conclusion
We’re grateful for the opportunity we had to interview Bram and learn from his valuable experiences and years of expertise.
