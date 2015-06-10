cpdf New.pdf 1-3 -o split/abstract.pdf
cpdf New.pdf 4-10 -o split/intro.pdf
cpdf New.pdf 11-15 -o split/background.pdf
cpdf New.pdf 16-32 -o split/beyondmlu.pdf
cpdf New.pdf 33-55 -o split/ncdn.pdf
cpdf New.pdf 56-61 -o split/shrink.pdf
cpdf New.pdf 62-77 -o split/auspice.pdf
cpdf New.pdf 78-79 -o split/proposed.pdf
cpdf New.pdf 80-88 -o split/bibliography.pdf
cp New.pdf split/thesis.pdf

# now copy to website
ssh loki.cs.umass.edu "rm -rf public_html/thesis"
scp -r split loki.cs.umass.edu:public_html/thesis
