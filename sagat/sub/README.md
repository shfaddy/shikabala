# Sub Phone

```scenario oscilla

pitch 0

distance 1

sweep 160
shift 32

attack 23
decay 5
sustain 100
release 8

```

## 2nd Sub

```scenario xoscilla

--reproduce 2nd-sub .

distance 0

step (1/2^8)

pitch 1

```

### 3rd Sub Phone

```scenario xoscilla

--reproduce 3rd-sub .

step (1/2^8)

pitch 4

.. ..

```

## Higher Sub

```scenario xoscilla

--reproduce higher-sub .

length (1/2^3)

distance 2

pitch 10

```

### 2nd Higher Sub

```scenario xoscilla

--reproduce 2nd-higher-sub .

step (1/2^8)

pitch 2

```

#### 3rd Higher Sub

```scenario xoscilla

--reproduce 3rd-higher-sub .

step (1/2^8)

pitch 5

```
