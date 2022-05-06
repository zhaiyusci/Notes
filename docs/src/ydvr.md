Title: ydvr: A C++ implement of DVR method
Date: 2018-01-07 16:10
Category: Science
Authors: Yu Zhai

[DVR](https://en.wikipedia.org/wiki/Pseudo-spectral_method) method is an important method to deal with the nuclear motion problem.  In the old days, Fortran is used to write almost all the scientific computation codes.  However, Fortran is dead.

Recently, people has been able to code in more powerful and popular language like Python and Matlab.  That's good.  But personally I do not like Matlab because it is not a open standard and python because of the indent syntax and the difference between py2 and py3.

C++, however, is an 'old' language but still very important these days.  I mean, you can still find a lot of scientific libraries in C++ and because it is one of the most important systematical language it cannot die in the near future.  C++ is object-oriented so it is easier to be reused by other guys.

So when I had the will to rebuild a DVR code I think C++ is a good choice.  Besides, I came up a 'new' trick for PODVR (actually not new: it is directly from the [original paper](http://www.sciencedirect.com/science/article/pii/000926149285330D) of PODVR).  The H0 operator can actually including all the 1D Hamiltonian so that we can make the potential energy matrix the most correct, if you know the fact that in DVR, the errors are directly from the potential part because the localized basis function for a DVR point/grid are only 'quasi-localized'.  So it is necessary to rebuild the code.

You can find my codes [here](https://github.com/zhaiyusci/ydvr).

