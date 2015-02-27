# SICP
I am working through [Structure and Interpretation of Computer Programs](http://mitpress.mit.edu/sicp/) using Racket. More specifically, I am using the helpful [neil/sicp](http://www.neilvandyke.org/racket-sicp/) PLaneT module, which is based on the R5RS subset of Racket. This repository is a place for me to keep all of the exercises as I work through them in a test-driven manner using [SchemeUnit](http://planet.racket-lang.org/package-source/schematics/schemeunit.plt/3/5/planet-docs/schemeunit/index.html).

## Structure
Each chapter of the book (that I have gotten to) has a folder called `ch<number>/`. Inside each of these folders, there are three files. `base.rkt` contains any code (copied verbatim) from the text itself that may be needed for the exercises. `exercises.rkt` contains my implementation of the chapter's exercises. `tests.rkt` contains my tests for the chapter's exercises.

## Installing dependencies
```sh
git clone https://github.com/ksmithbaylor/sicp
chmod +x install.sh
./install.sh
```

## Running a single chapter's tests
```sh
chmod +x test
./test 1 # to run the tests for chapter 1's exercises
```

## Running all tests
```sh
./test all
```
