# LaTeX Workshop for Linguists

This repository contains materials for an impromptu workshop on LaTeX at the 2015 Chicago LSA Institute.

Feel free to fork this repository and open a pull request if you see ways that these materials could be improved.

# Compiling

In order to compile the file `latex-workshop-for-linguists.tex`, you will need to do the following things:

* Install `Pygments`. If you have `pip` installed, you can just do `pip install Pygments`. See the [`minted` documentation][minted] documentation for more information.
* You will need to compile the file with shell escape enabled. Also see the [`minted` documentation][minted] documentation for more information.
* You will need to either change the font that the document uses or you will need to download and install the [Computer Modern Unicode][cm-unicode] font on your machine. An altnerative option would be to compile with `pdflatex` instead of `xelatex`, but there are Unicode characters in the source of the document, so this is not recommended.
* You will need to put the file [`leipzig-mod.sty`][leipzig-mod] in either the same directory as `latex-workshop-for-linguists.tex` or in `TEXMFHOME/tex/generic`.

# License

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.

[minted]: http://texdoc.net/texmf-dist/doc/latex/minted/minted.pdf
[cm-unicode]: http://sourceforge.net/projects/cm-unicode/
[leipzig-mod]: https://raw.githubusercontent.com/adamliter/TeXnology/master/TEXMFHOME/tex/generic/leipzig-mod.sty
