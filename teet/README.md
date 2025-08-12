# Teet Sound Design

## Body Phone

```scenario oscilla

chord 6

distance attach + $chord/6

pitch attach + 6

import fm

fm body .

FM attach - $chord

sweep 8
shift 13

attack 8
decay 2
sustain 16
release 1

```

## Sub Phone

```scenario oscilla

~ teet .

import sine

sine sub .

distance 4

attack 3
decay 3
sustain 16
release 1

```
