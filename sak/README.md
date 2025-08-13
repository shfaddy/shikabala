# Sak Sound Design

```scenario oscilla

--read from ~ tak README.md

```

```scenario oscilla

sub --read from ~ tak sub README.md

bone --read from ~ tak bone README.md

body --read from ~ tak body README.md

snatch --read from ~ tak snatch README.md

```

```scenario oscilla

length attach / 2^1

pitch attach + 12

distance attach + 2

sub .
attack attach + 2
decay attach + 2
sustain attach + 20

sweep attach - 20

.. body .

decay attach + 2
sustain attach + 20

sweep attach - 20

.. snatch .

sustain attach + 20

```
