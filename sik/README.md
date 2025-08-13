# Sik Sound Design

```scenario oscilla

--read from ~ sak README.md

```

```scenario oscilla

chord 8

step attach + $chord / 2^13

length attach / 2^(8+$chord)

pitch attach + 30 + $chord * -10

distance attach + $chord/3

```

```scenario oscilla

sub .

attack attach + 3
decay attach + 3

```

```scenario oscilla

body .

attack attach + 2
decay attach + 2

```

```scenario oscilla

snatch .

attack attach + 3
decay attach + 3

```
