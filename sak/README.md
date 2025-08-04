# Sak Sound Design

```scenario oscilla

chord 2

--read from ~ tak README.md

sub --read from ~ tak sub README.md
body --read from ~ tak body README.md
snatch --read from ~ tak snatch README.md

sub .

attack attach + 3
decay attach + 3
release attach + 3

.. body .

attack attach + 1
decay attach + 1
release attach + 1

.. snatch .

attack attach + 1
decay attach + 1

~ sak .

pitch attach + 10 + $chord * 10

distance 2

```
