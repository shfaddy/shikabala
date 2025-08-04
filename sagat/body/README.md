# Body Phone

```scenario oscilla

pitch 10

distance 1

FM 1

sweep 120
shift 32

attack 28
decay 7
sustain 100
release 13

```

## 2nd Body Phone

```scenario oscilla

--reproduce 2nd-body .

step (1/2^8)

pitch 3

```

### 3rd Body Phone

```scenario oscilla

--reproduce 3rd-body .

step (1/2^8)

pitch 6

```
