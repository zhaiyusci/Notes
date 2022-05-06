# Quantum Harmonic Oscillator as a training material for young theoretical chemists

As I know, a lot of famous universities in North America and Europe train their young scientist with pretty hard jobs.  It is not always the same situation here in China, oh, mainland of it.

In China, the courses are often limited to 'introduction'.  Most of the professors introduce the basic ideas of the subject, and the students finish the exercises in the textbook, which is aims at the graduate school entrance examination.   However, in the famous universities, the homework can be very difficult to solve, and often need the students to finish some reading tasks and some programming.  The place where I got the idea is OCW of many universities like MIT.  A good example is list [here](http://www.scs.illinois.edu/~sohirata/education.html)\(Professor So Hirata's page\).

I am now a Ph. D. candidate and I need help my professor train young graduate students.  Actually, in the future, when I have my own team (although perhaps I could spoil that...), I need train my own students.  What should I do?

Here is my plan.  As I am working on Theoretical Chemistry in the 21st century, my students need to know how to program.  So I look into the textbook of spectroscopy, in which field I am making efforts, to find the good examples for the primers.  Quantum Harmonic Oscillator is a good example to train programming for several reasons. (a) You do not need a eigensolver, which is always hard for guys of chemistry major, to know its eigenvalue and eigenfunction (of course we are talking about Hamiltonian here); (b) The eigenfunction is analytically available . However, to get the function, a subroutine to calculate the Hermite polynomials, which a sets of unlimited number orthogonal functions with recursion relation; (c) To finish the job, all the important syntaxes in FORTRAN are used.  Yes, we still use FORTRAN. But I think it is not a big deal if you want to use another language.  As I am informed, python is one of the most popular programming languages in science education.  One more thing is that the finished subroutines, the eigenfunctions of harmonic oscillator, can be used as the basis set to solve 1D quantum oscillator, although the main method we use in [Li group](http://huiligroup.org/) is sinc DVR. 

The job I gave the younger students is composing a program to draw the picture like [the one on Wikipedia](https://en.wikipedia.org/wiki/Quantum_harmonic_oscillator#/media/File:HarmOsziFunktionen.png).

I ask my young lab mates to finish the job by Friday.  I will give an example here after that here on my blog.  Notice that the visualization codes are not needed. They just need to work out the input file of some plot tools.  I do not want to make the job too hard.  I also tell them that maybe they can just work out the first five functions instead of the general one (again, less hard problem, but it is for primers).

I wish them good luck.  I will post my program here, although it will not be the best solution.

---

Sevaral days later...

The codes is available [here](https://github.com/zhaiyusci/theor.chem.primers).
