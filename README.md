<!-- -*- coding: utf-8; mode: markdown; fill-column: 72; -*- -->

# LaTeX workshop (for linguists)

This handout was originally developed for an impromptu workshop on LaTeX
that I gave at the 2015 Chicago Linguistic Institute.  Since then, I
have updated the handout and will continute to periodically keep it up
to date.  A compiled `.pdf` of the most recent version of the handout
can be found [here][handout].

Feel free to fork this repository and open a pull request if you see
ways that these materials could be improved.

# Compiling

In order to compile the file `latex-workshop-for-linguists.tex`, you
will need to do the following things:

* Install `Pygments`. If you have `pip` installed, you can just do
  `pip install Pygments`. See the [`minted` documentation][minted]
  for more information.
* Compile the file with shell escape enabled. Also see
  the [`minted` documentation][minted] for more information.
* Either change the font that the document uses or download and install
  the [Computer Modern Unicode][cm-unicode] font on your machine.

While not necessary to succesfully compile the document, if you'd like
the `git` information in the footer to be typeset correctly, you will
also need to:

* Install the three required hooks into the `.git/hooks/` directory.
  This can be done via the `install-git-hooks.sh` script on a *nix
  system with `./circle-ci-setup/install-git-hooks.sh`. Then do
  `git checkout master`. (The `git` information for insertion into the
  document is generated anytime a checkout, commit, or merge occurs.)

# History

For a list of changes, see the [changelog][changelog]. For PDFs of older
releases of this document, see the [releases][releases].

# License

<a rel="license"
href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img
alt="Creative Commons License" style="border-width:0"
src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br
/>This work is licensed under a <a rel="license"
href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative
Commons Attribution-NonCommercial-ShareAlike 4.0 International
License</a>.

[handout]: http://adamliter.org/content/LaTeX/latex-workshop-for-linguists.pdf
[minted]: http://texdoc.net/texmf-dist/doc/latex/minted/minted.pdf
[cm-unicode]: http://sourceforge.net/projects/cm-unicode/
[changelog]: /CHANGELOG.md
[releases]: https://github.com/adamliter/latex-workshop/releases
