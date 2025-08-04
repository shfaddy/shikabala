<CsoundSynthesizer>

<CsOptions>

-o dac

-L stdin

</CsOptions>

<CsInstruments>

sr = 48000
ksmps = 32
nchnls = 1
0dbfs = 1

gaNote init 0

instr 1

iPStep init p ( 2 )
iPLength init p ( 3 )
iPPitch init p ( 4 )
iPDistance init p ( 5 )
iPSweep init p ( 6 )
iPShift init p ( 7 )
iPAttack init p ( 8 )
iPDecay init p ( 9 )
iPSustain init p ( 10 )
iPRelease init p ( 11 )

iAttack init 1 / 2 ^ iPAttack
iDecay init 1 / 2 ^ iPDecay
iSustain init 1 / 2 ^ iPSustain
iRelease init 1 / 2 ^ iPRelease

if p3 < iAttack + iDecay + iRelease then

iAttack *= p3
iDecay *= p3
iRelease *= p3

endif

aAmplitude linseg 0, iAttack, 1, iDecay, iSustain, p3 - iAttack - iDecay - iRelease, iSustain, iRelease, 0

print iPPitch

iFrequency init 2 ^ ( 4 + ( iPPitch / 16 ) )
iSweep init 2 ^ ( iPSweep / 16 )
iShift init 1 / 2 ^ iPShift

aFrequency linseg iFrequency * iSweep, iShift, iFrequency

aNote poscil aAmplitude, aFrequency

aNote clip aNote, 1, 0dbfs

gaNote = gaNote + aNote / 2 ^ iPDistance

endin

instr 2

iPStep init p ( 2 )
iPLength init p ( 3 )
iPPitch init p ( 4 )
iPDistance init p ( 5 )
iPSweep init p ( 6 )
iPShift init p ( 7 )
iPAttack init p ( 8 )
iPDecay init p ( 9 )
iPSustain init p ( 10 )
iPRelease init p ( 11 )

iAttack init 1 / 2 ^ iPAttack
iDecay init 1 / 2 ^ iPDecay
iSustain init 1 / 2 ^ iPSustain
iRelease init 1 / 2 ^ iPRelease

if p3 < iAttack + iDecay + iRelease then

iAttack *= p3
iDecay *= p3
iRelease *= p3

endif

aAmplitude linseg 0, iAttack, 1, iDecay, iSustain, p3 - iAttack - iDecay - iRelease, iSustain, iRelease, 0

print iPPitch

iFrequency init 2 ^ ( 4 + ( iPPitch / 16 ) )
iSweep init 2 ^ ( iPSweep / 16 )
iShift init 1 / 2 ^ iPShift

aFrequency linseg iFrequency * iSweep, iShift, iFrequency

aNote noise aAmplitude, 0

aNote butterlp aNote, aFrequency

aNote clip aNote, 1, 0dbfs

gaNote = gaNote + aNote / 2 ^ iPDistance

endin

instr 3

iPStep init p ( 2 )
iPLength init p ( 3 )
iPPitch init p ( 4 )
iPDistance init p ( 5 )
iPSweep init p ( 6 )
iPShift init p ( 7 )
iPAttack init p ( 8 )
iPDecay init p ( 9 )
iPSustain init p ( 10 )
iPRelease init p ( 11 )
iPFM init p ( 12 )

iAttack init 1 / 2 ^ iPAttack
iDecay init 1 / 2 ^ iPDecay
iSustain init 1 / 2 ^ iPSustain
iRelease init 1 / 2 ^ iPRelease

if p3 < iAttack + iDecay + iRelease then

iAttack *= p3
iDecay *= p3
iRelease *= p3

endif

aAmplitude linseg 0, iAttack, 1, iDecay, iSustain, p3 - iAttack - iDecay - iRelease, iSustain, iRelease, 0

print iPPitch

iFrequency init 2 ^ ( 4 + ( iPPitch / 16 ) )
iSweep init 2 ^ ( iPSweep / 16 )
iShift init 1 / 2 ^ iPShift

aFrequency linseg iFrequency * iSweep, iShift, iFrequency

iFrequencyModulation init 1 / 2 ^ iPFM

aFrequencyModulated poscil aFrequency, aFrequency * iFrequencyModulation

aNote poscil aAmplitude, aFrequencyModulated

aNote clip aNote, 1, 0dbfs

gaNote = gaNote + aNote / 2 ^ iPDistance

endin

instr 4

iPStep init p ( 2 )
iPLength init p ( 3 )
iPPitch init p ( 4 )
iPDistance init p ( 5 )
iPSweep init p ( 6 )
iPShift init p ( 7 )
iPAttack init p ( 8 )
iPDecay init p ( 9 )
iPSustain init p ( 10 )
iPRelease init p ( 11 )

iAttack init 1 / 2 ^ iPAttack
iDecay init 1 / 2 ^ iPDecay
iSustain init 1 / 2 ^ iPSustain
iRelease init 1 / 2 ^ iPRelease

if p3 < iAttack + iDecay + iRelease then

iAttack *= p3
iDecay *= p3
iRelease *= p3

endif

aAmplitude linseg 0, iAttack, 1, iDecay, iSustain, p3 - iAttack - iDecay - iRelease, iSustain, iRelease, 0

print iPPitch

iFrequency init 2 ^ ( 4 + ( iPPitch / 16 ) )
iSweep init 2 ^ ( iPSweep / 16 )
iShift init 1 / 2 ^ iPShift

aFrequency linseg iFrequency * iSweep, iShift, iFrequency

aNote poscil aAmplitude, aFrequency

aNote clip aNote, 1, 0dbfs

gaNote = gaNote + aNote / 2 ^ iPDistance

endin

instr 5

iPStep init p ( 2 )
iPLength init p ( 3 )
iPPitch init p ( 4 )
iPDistance init p ( 5 )
iPSweep init p ( 6 )
iPShift init p ( 7 )
iPAttack init p ( 8 )
iPDecay init p ( 9 )
iPSustain init p ( 10 )
iPRelease init p ( 11 )
iPFM init p ( 12 )

iAttack init 1 / 2 ^ iPAttack
iDecay init 1 / 2 ^ iPDecay
iSustain init 1 / 2 ^ iPSustain
iRelease init 1 / 2 ^ iPRelease

if p3 < iAttack + iDecay + iRelease then

iAttack *= p3
iDecay *= p3
iRelease *= p3

endif

aAmplitude linseg 0, iAttack, 1, iDecay, iSustain, p3 - iAttack - iDecay - iRelease, iSustain, iRelease, 0

print iPPitch

iFrequency init 2 ^ ( 4 + ( iPPitch / 16 ) )
iSweep init 2 ^ ( iPSweep / 16 )
iShift init 1 / 2 ^ iPShift

aFrequency linseg iFrequency * iSweep, iShift, iFrequency

iFrequencyModulation init 1 / 2 ^ iPFM

aFrequencyModulated poscil aFrequency, aFrequency * iFrequencyModulation

aNote poscil aAmplitude, aFrequencyModulated

aNote clip aNote, 1, 0dbfs

gaNote = gaNote + aNote / 2 ^ iPDistance

endin

instr 6

iPStep init p ( 2 )
iPLength init p ( 3 )
iPPitch init p ( 4 )
iPDistance init p ( 5 )
iPSweep init p ( 6 )
iPShift init p ( 7 )
iPAttack init p ( 8 )
iPDecay init p ( 9 )
iPSustain init p ( 10 )
iPRelease init p ( 11 )

iAttack init 1 / 2 ^ iPAttack
iDecay init 1 / 2 ^ iPDecay
iSustain init 1 / 2 ^ iPSustain
iRelease init 1 / 2 ^ iPRelease

if p3 < iAttack + iDecay + iRelease then

iAttack *= p3
iDecay *= p3
iRelease *= p3

endif

aAmplitude linseg 0, iAttack, 1, iDecay, iSustain, p3 - iAttack - iDecay - iRelease, iSustain, iRelease, 0

print iPPitch

iFrequency init 2 ^ ( 4 + ( iPPitch / 16 ) )
iSweep init 2 ^ ( iPSweep / 16 )
iShift init 1 / 2 ^ iPShift

aFrequency linseg iFrequency * iSweep, iShift, iFrequency

aNote noise aAmplitude, 0

aNote butterlp aNote, aFrequency

aNote clip aNote, 1, 0dbfs

gaNote = gaNote + aNote / 2 ^ iPDistance

endin

instr 7

iPStep init p ( 2 )
iPLength init p ( 3 )
iPPitch init p ( 4 )
iPDistance init p ( 5 )
iPSweep init p ( 6 )
iPShift init p ( 7 )
iPAttack init p ( 8 )
iPDecay init p ( 9 )
iPSustain init p ( 10 )
iPRelease init p ( 11 )

iAttack init 1 / 2 ^ iPAttack
iDecay init 1 / 2 ^ iPDecay
iSustain init 1 / 2 ^ iPSustain
iRelease init 1 / 2 ^ iPRelease

if p3 < iAttack + iDecay + iRelease then

iAttack *= p3
iDecay *= p3
iRelease *= p3

endif

aAmplitude linseg 0, iAttack, 1, iDecay, iSustain, p3 - iAttack - iDecay - iRelease, iSustain, iRelease, 0

print iPPitch

iFrequency init 2 ^ ( 4 + ( iPPitch / 16 ) )
iSweep init 2 ^ ( iPSweep / 16 )
iShift init 1 / 2 ^ iPShift

aFrequency linseg iFrequency * iSweep, iShift, iFrequency

aNote poscil aAmplitude, aFrequency

aNote clip aNote, 1, 0dbfs

gaNote = gaNote + aNote / 2 ^ iPDistance

endin

instr 8

iPStep init p ( 2 )
iPLength init p ( 3 )
iPPitch init p ( 4 )
iPDistance init p ( 5 )
iPSweep init p ( 6 )
iPShift init p ( 7 )
iPAttack init p ( 8 )
iPDecay init p ( 9 )
iPSustain init p ( 10 )
iPRelease init p ( 11 )
iPFM init p ( 12 )

iAttack init 1 / 2 ^ iPAttack
iDecay init 1 / 2 ^ iPDecay
iSustain init 1 / 2 ^ iPSustain
iRelease init 1 / 2 ^ iPRelease

if p3 < iAttack + iDecay + iRelease then

iAttack *= p3
iDecay *= p3
iRelease *= p3

endif

aAmplitude linseg 0, iAttack, 1, iDecay, iSustain, p3 - iAttack - iDecay - iRelease, iSustain, iRelease, 0

print iPPitch

iFrequency init 2 ^ ( 4 + ( iPPitch / 16 ) )
iSweep init 2 ^ ( iPSweep / 16 )
iShift init 1 / 2 ^ iPShift

aFrequency linseg iFrequency * iSweep, iShift, iFrequency

iFrequencyModulation init 1 / 2 ^ iPFM

aFrequencyModulated poscil aFrequency, aFrequency * iFrequencyModulation

aNote poscil aAmplitude, aFrequencyModulated

aNote clip aNote, 1, 0dbfs

gaNote = gaNote + aNote / 2 ^ iPDistance

endin

instr 9

iPStep init p ( 2 )
iPLength init p ( 3 )
iPPitch init p ( 4 )
iPDistance init p ( 5 )
iPSweep init p ( 6 )
iPShift init p ( 7 )
iPAttack init p ( 8 )
iPDecay init p ( 9 )
iPSustain init p ( 10 )
iPRelease init p ( 11 )

iAttack init 1 / 2 ^ iPAttack
iDecay init 1 / 2 ^ iPDecay
iSustain init 1 / 2 ^ iPSustain
iRelease init 1 / 2 ^ iPRelease

if p3 < iAttack + iDecay + iRelease then

iAttack *= p3
iDecay *= p3
iRelease *= p3

endif

aAmplitude linseg 0, iAttack, 1, iDecay, iSustain, p3 - iAttack - iDecay - iRelease, iSustain, iRelease, 0

print iPPitch

iFrequency init 2 ^ ( 4 + ( iPPitch / 16 ) )
iSweep init 2 ^ ( iPSweep / 16 )
iShift init 1 / 2 ^ iPShift

aFrequency linseg iFrequency * iSweep, iShift, iFrequency

aNote noise aAmplitude, 0

aNote butterlp aNote, aFrequency

aNote clip aNote, 1, 0dbfs

gaNote = gaNote + aNote / 2 ^ iPDistance

endin

instr 10

iPStep init p ( 2 )
iPLength init p ( 3 )
iPPitch init p ( 4 )
iPDistance init p ( 5 )
iPSweep init p ( 6 )
iPShift init p ( 7 )
iPAttack init p ( 8 )
iPDecay init p ( 9 )
iPSustain init p ( 10 )
iPRelease init p ( 11 )

iAttack init 1 / 2 ^ iPAttack
iDecay init 1 / 2 ^ iPDecay
iSustain init 1 / 2 ^ iPSustain
iRelease init 1 / 2 ^ iPRelease

if p3 < iAttack + iDecay + iRelease then

iAttack *= p3
iDecay *= p3
iRelease *= p3

endif

aAmplitude linseg 0, iAttack, 1, iDecay, iSustain, p3 - iAttack - iDecay - iRelease, iSustain, iRelease, 0

print iPPitch

iFrequency init 2 ^ ( 4 + ( iPPitch / 16 ) )
iSweep init 2 ^ ( iPSweep / 16 )
iShift init 1 / 2 ^ iPShift

aFrequency linseg iFrequency * iSweep, iShift, iFrequency

aNote poscil aAmplitude, aFrequency

aNote clip aNote, 1, 0dbfs

gaNote = gaNote + aNote / 2 ^ iPDistance

endin

instr 11

iPStep init p ( 2 )
iPLength init p ( 3 )
iPPitch init p ( 4 )
iPDistance init p ( 5 )
iPSweep init p ( 6 )
iPShift init p ( 7 )
iPAttack init p ( 8 )
iPDecay init p ( 9 )
iPSustain init p ( 10 )
iPRelease init p ( 11 )
iPFM init p ( 12 )

iAttack init 1 / 2 ^ iPAttack
iDecay init 1 / 2 ^ iPDecay
iSustain init 1 / 2 ^ iPSustain
iRelease init 1 / 2 ^ iPRelease

if p3 < iAttack + iDecay + iRelease then

iAttack *= p3
iDecay *= p3
iRelease *= p3

endif

aAmplitude linseg 0, iAttack, 1, iDecay, iSustain, p3 - iAttack - iDecay - iRelease, iSustain, iRelease, 0

print iPPitch

iFrequency init 2 ^ ( 4 + ( iPPitch / 16 ) )
iSweep init 2 ^ ( iPSweep / 16 )
iShift init 1 / 2 ^ iPShift

aFrequency linseg iFrequency * iSweep, iShift, iFrequency

iFrequencyModulation init 1 / 2 ^ iPFM

aFrequencyModulated poscil aFrequency, aFrequency * iFrequencyModulation

aNote poscil aAmplitude, aFrequencyModulated

aNote clip aNote, 1, 0dbfs

gaNote = gaNote + aNote / 2 ^ iPDistance

endin

instr 12

iPStep init p ( 2 )
iPLength init p ( 3 )
iPPitch init p ( 4 )
iPDistance init p ( 5 )
iPSweep init p ( 6 )
iPShift init p ( 7 )
iPAttack init p ( 8 )
iPDecay init p ( 9 )
iPSustain init p ( 10 )
iPRelease init p ( 11 )

iAttack init 1 / 2 ^ iPAttack
iDecay init 1 / 2 ^ iPDecay
iSustain init 1 / 2 ^ iPSustain
iRelease init 1 / 2 ^ iPRelease

if p3 < iAttack + iDecay + iRelease then

iAttack *= p3
iDecay *= p3
iRelease *= p3

endif

aAmplitude linseg 0, iAttack, 1, iDecay, iSustain, p3 - iAttack - iDecay - iRelease, iSustain, iRelease, 0

print iPPitch

iFrequency init 2 ^ ( 4 + ( iPPitch / 16 ) )
iSweep init 2 ^ ( iPSweep / 16 )
iShift init 1 / 2 ^ iPShift

aFrequency linseg iFrequency * iSweep, iShift, iFrequency

aNote noise aAmplitude, 0

aNote butterlp aNote, aFrequency

aNote clip aNote, 1, 0dbfs

gaNote = gaNote + aNote / 2 ^ iPDistance

endin

instr 13

iPStep init p ( 2 )
iPLength init p ( 3 )
iPPitch init p ( 4 )
iPDistance init p ( 5 )
iPSweep init p ( 6 )
iPShift init p ( 7 )
iPAttack init p ( 8 )
iPDecay init p ( 9 )
iPSustain init p ( 10 )
iPRelease init p ( 11 )

iAttack init 1 / 2 ^ iPAttack
iDecay init 1 / 2 ^ iPDecay
iSustain init 1 / 2 ^ iPSustain
iRelease init 1 / 2 ^ iPRelease

if p3 < iAttack + iDecay + iRelease then

iAttack *= p3
iDecay *= p3
iRelease *= p3

endif

aAmplitude linseg 0, iAttack, 1, iDecay, iSustain, p3 - iAttack - iDecay - iRelease, iSustain, iRelease, 0

print iPPitch

iFrequency init 2 ^ ( 4 + ( iPPitch / 16 ) )
iSweep init 2 ^ ( iPSweep / 16 )
iShift init 1 / 2 ^ iPShift

aFrequency linseg iFrequency * iSweep, iShift, iFrequency

aNote poscil aAmplitude, aFrequency

aNote clip aNote, 1, 0dbfs

gaNote = gaNote + aNote / 2 ^ iPDistance

endin

instr 14

iPStep init p ( 2 )
iPLength init p ( 3 )
iPPitch init p ( 4 )
iPDistance init p ( 5 )
iPSweep init p ( 6 )
iPShift init p ( 7 )
iPAttack init p ( 8 )
iPDecay init p ( 9 )
iPSustain init p ( 10 )
iPRelease init p ( 11 )
iPFM init p ( 12 )

iAttack init 1 / 2 ^ iPAttack
iDecay init 1 / 2 ^ iPDecay
iSustain init 1 / 2 ^ iPSustain
iRelease init 1 / 2 ^ iPRelease

if p3 < iAttack + iDecay + iRelease then

iAttack *= p3
iDecay *= p3
iRelease *= p3

endif

aAmplitude linseg 0, iAttack, 1, iDecay, iSustain, p3 - iAttack - iDecay - iRelease, iSustain, iRelease, 0

print iPPitch

iFrequency init 2 ^ ( 4 + ( iPPitch / 16 ) )
iSweep init 2 ^ ( iPSweep / 16 )
iShift init 1 / 2 ^ iPShift

aFrequency linseg iFrequency * iSweep, iShift, iFrequency

iFrequencyModulation init 1 / 2 ^ iPFM

aFrequencyModulated poscil aFrequency, aFrequency * iFrequencyModulation

aNote poscil aAmplitude, aFrequencyModulated

aNote clip aNote, 1, 0dbfs

gaNote = gaNote + aNote / 2 ^ iPDistance

endin

instr 15

iPStep init p ( 2 )
iPLength init p ( 3 )
iPPitch init p ( 4 )
iPDistance init p ( 5 )
iPSweep init p ( 6 )
iPShift init p ( 7 )
iPAttack init p ( 8 )
iPDecay init p ( 9 )
iPSustain init p ( 10 )
iPRelease init p ( 11 )

iAttack init 1 / 2 ^ iPAttack
iDecay init 1 / 2 ^ iPDecay
iSustain init 1 / 2 ^ iPSustain
iRelease init 1 / 2 ^ iPRelease

if p3 < iAttack + iDecay + iRelease then

iAttack *= p3
iDecay *= p3
iRelease *= p3

endif

aAmplitude linseg 0, iAttack, 1, iDecay, iSustain, p3 - iAttack - iDecay - iRelease, iSustain, iRelease, 0

print iPPitch

iFrequency init 2 ^ ( 4 + ( iPPitch / 16 ) )
iSweep init 2 ^ ( iPSweep / 16 )
iShift init 1 / 2 ^ iPShift

aFrequency linseg iFrequency * iSweep, iShift, iFrequency

aNote noise aAmplitude, 0

aNote butterlp aNote, aFrequency

aNote clip aNote, 1, 0dbfs

gaNote = gaNote + aNote / 2 ^ iPDistance

endin

instr mixer

aNote clip gaNote, 1, 0dbfs

out aNote

gaNote = 0

endin

instr loopback

rewindscore

endin

instr exit

exitnow

endin

</CsInstruments>

<CsScore>

i "mixer" 0 -1

t 0 [ ( 75 ) ]

#define measure #( 4 )#

v [ $measure ]

; dom at step ( ( 0 ) + 0 ) for length ( ( (1/$measure) ) * 1 / $ornaments ) with pitch ( ( 40 ) + 0 ) and distance ( ( 0 ) + 0 )

{ 1 chord

#define ornaments #1#

{ $ornaments ornament

; dom/sub
i [ 1.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + -32 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( 64 ) ] [ ( 6 ) ] [ ( 5 ) ] [ ( 4 ) ] [ ( 4 ) ] [ ( 1 ) ]

; dom/sub/higher
i [ 1.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^2) ) ] [ ( ( ( ( 64 ) + 0 ) + -32 ) + 32 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 1 ) ] [ ( ( 64 ) + 0 ) ] [ ( ( 6 ) + 3 ) ] [ ( ( 5 ) + 1 ) ] [ ( ( 4 ) + 1 ) ] [ ( ( 4 ) + 0 ) ] [ ( ( 1 ) + 1 ) ]

; dom/snatch
i [ 2.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + -16 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( 96 ) ] [ ( 7 ) ] [ ( 5 ) ] [ ( 5 ) ] [ ( 10 ) ] [ ( 10 ) ]

; dom/snatch/higher
i [ 2.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 ) + -16 ) + 16 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 1 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 7 ) + 0 ) ] [ ( ( 5 ) + 0 ) ] [ ( ( 5 ) + 0 ) ] [ ( ( 10 ) + 0 ) ] [ ( ( 10 ) + 0 ) ]

; dom/snatch/higher/higher
i [ 2.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + -16 ) + 16 ) + 16 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 1 ) + 2 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 7 ) + 0 ) + 0 ) ] [ ( ( ( 5 ) + 0 ) + 0 ) ] [ ( ( ( 5 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ]

; dom/body
i [ 3.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + -32 ) ] [ ( ( ( 0 ) + 0 ) + 1 ) ] [ ( 64 ) ] [ ( 6 ) ] [ ( 5 ) ] [ ( 4 ) ] [ ( 8 ) ] [ ( 3 ) ] [ ( -1 ) ]

}

}

; sik at step ( ( 0 ) + 1/16 + $chord / 2^13 ) for length ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) with pitch ( ( 40 ) + 0 + 50 + $chord * -10 ) and distance ( ( 0 ) + 3 + $chord/3 )

{ 8 chord

#define ornaments #1#

{ $ornaments ornament

; sik/sub
i [ 10.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 1/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 96 ) ] [ ( 23 ) ] [ ( 8 + 3 ) ] [ ( 8 + 3 ) ] [ ( 13 ) ] [ ( 8 + 3 ) ]

; sik/sub/2nd-sub
i [ 10.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 1/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 1 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sik/sub/2nd-sub/3rd-sub
i [ 10.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 1/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 1 ) + 4 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sik/sub/higher-sub
i [ 10.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 1/16 + $chord / 2^13 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sik/sub/higher-sub/2nd-higher-sub
i [ 10.4 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 1/16 + $chord / 2^13 ) + 0 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) + 2 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sik/sub/higher-sub/2nd-higher-sub/3rd-higher-sub
i [ 10.5 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( ( 0 ) + 1/16 + $chord / 2^13 ) + 0 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) * 1 ) * 1 ) ] [ ( ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) + 2 ) + 5 ) ] [ ( ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( ( ( 96 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 23 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 13 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ]

; sik/body
i [ 11.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 1/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 96 ) ] [ ( 10 ) ] [ ( 8 + 1 ) ] [ ( 8 + 1 ) ] [ ( 13 ) ] [ ( 8 + 1 ) ] [ ( 0 ) ]

; sik/body/2nd-body
i [ 11.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 1/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) + 3 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 10 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 0 ) + 0 ) ]

; sik/body/2nd-body/3rd-body
i [ 11.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 1/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) + 3 ) + 6 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ]

; sik/snatch
i [ 12.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 1/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 256 ) ] [ ( 12 ) ] [ ( 9 + 1 ) ] [ ( 5 + 1 ) ] [ ( 8 ) ] [ ( 8 ) ]

; sik/snatch/2nd-snatch
i [ 12.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 1/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 4 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 256 ) + 0 ) ] [ ( ( 12 ) + 0 ) ] [ ( ( 9 + 1 ) + 0 ) ] [ ( ( 5 + 1 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; sik/snatch/2nd-snatch/3rd-snatch
i [ 12.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 1/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 4 ) + 9 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 256 ) + 0 ) + 0 ) ] [ ( ( ( 12 ) + 0 ) + 0 ) ] [ ( ( ( 9 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 5 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

}

}

; sak at step ( ( 0 ) + 2/16 ) for length ( ( (1/$measure) ) * 1 / $ornaments ) with pitch ( ( 40 ) + 0 + 10 + $chord * 10 + 10 + $chord * 10 ) and distance ( ( 0 ) + 2 )

{ 2 chord

#define ornaments #1#

{ $ornaments ornament

; sak/sub
i [ 7.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 2/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) ] [ ( ( ( 0 ) + 2 ) + 0 ) ] [ ( 96 ) ] [ ( 23 ) ] [ ( 8 + 3 ) ] [ ( 8 + 3 ) ] [ ( 13 ) ] [ ( 8 + 3 ) ]

; sak/sub/2nd-sub
i [ 7.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 2/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 1 ) ] [ ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sak/sub/2nd-sub/3rd-sub
i [ 7.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 2/16 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 1 ) + 4 ) ] [ ( ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sak/sub/higher-sub
i [ 7.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 2/16 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) ] [ ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 16 ) ] [ ( ( ( ( 0 ) + 2 ) + 0 ) + 2 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sak/sub/higher-sub/2nd-higher-sub
i [ 7.4 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 2/16 ) + 0 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 16 ) + 2 ) ] [ ( ( ( ( ( 0 ) + 2 ) + 0 ) + 2 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sak/sub/higher-sub/2nd-higher-sub/3rd-higher-sub
i [ 7.5 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( ( 0 ) + 2/16 ) + 0 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) * 1 ) * 1 ) ] [ ( ( ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 16 ) + 2 ) + 5 ) ] [ ( ( ( ( ( ( 0 ) + 2 ) + 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( ( ( 96 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 23 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 13 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ]

; sak/body
i [ 8.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 2/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 16 ) ] [ ( ( ( 0 ) + 2 ) + 0 ) ] [ ( 96 ) ] [ ( 10 ) ] [ ( 8 + 1 ) ] [ ( 8 + 1 ) ] [ ( 13 ) ] [ ( 8 + 1 ) ] [ ( 0 ) ]

; sak/body/2nd-body
i [ 8.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 2/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 16 ) + 3 ) ] [ ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 10 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 0 ) + 0 ) ]

; sak/body/2nd-body/3rd-body
i [ 8.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 2/16 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 16 ) + 3 ) + 6 ) ] [ ( ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ]

; sak/snatch
i [ 9.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 2/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) ] [ ( ( ( 0 ) + 2 ) + 0 ) ] [ ( 256 ) ] [ ( 12 ) ] [ ( 9 + 1 ) ] [ ( 5 + 1 ) ] [ ( 8 ) ] [ ( 8 ) ]

; sak/snatch/2nd-snatch
i [ 9.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 2/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 4 ) ] [ ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( 256 ) + 0 ) ] [ ( ( 12 ) + 0 ) ] [ ( ( 9 + 1 ) + 0 ) ] [ ( ( 5 + 1 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; sak/snatch/2nd-snatch/3rd-snatch
i [ 9.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 2/16 ) + 0 ) + (1/2^8) ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 4 ) + 9 ) ] [ ( ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 256 ) + 0 ) + 0 ) ] [ ( ( ( 12 ) + 0 ) + 0 ) ] [ ( ( ( 9 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 5 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

}

}

; tak at step ( ( 0 ) + 3/16 ) for length ( ( (1/$measure) ) * 1 / $ornaments ) with pitch ( ( 40 ) + 0 ) and distance ( ( 0 ) + 0 )

{ 1 chord

#define ornaments #1#

{ $ornaments ornament

; tak/sub
i [ 4.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 3/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( 96 ) ] [ ( 23 ) ] [ ( 8 ) ] [ ( 8 ) ] [ ( 13 ) ] [ ( 8 ) ]

; tak/sub/2nd-sub
i [ 4.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 3/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 ) + 0 ) + 1 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; tak/sub/2nd-sub/3rd-sub
i [ 4.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 3/16 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + 0 ) + 1 ) + 4 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

; tak/sub/higher-sub
i [ 4.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 3/16 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) ] [ ( ( ( ( 64 ) + 0 ) + 0 ) + 16 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 2 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; tak/sub/higher-sub/2nd-higher-sub
i [ 4.4 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 3/16 ) + 0 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + 0 ) + 16 ) + 2 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 2 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

; tak/sub/higher-sub/2nd-higher-sub/3rd-higher-sub
i [ 4.5 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( ( 0 ) + 3/16 ) + 0 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) * 1 ) * 1 ) ] [ ( ( ( ( ( ( 64 ) + 0 ) + 0 ) + 16 ) + 2 ) + 5 ) ] [ ( ( ( ( ( ( 0 ) + 0 ) + 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( ( ( 96 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 23 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 13 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 ) + 0 ) + 0 ) + 0 ) ]

; tak/body
i [ 5.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 3/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + 16 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( 96 ) ] [ ( 10 ) ] [ ( 8 ) ] [ ( 8 ) ] [ ( 13 ) ] [ ( 8 ) ] [ ( 0 ) ]

; tak/body/2nd-body
i [ 5.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 3/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 ) + 16 ) + 3 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 10 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 0 ) + 0 ) ]

; tak/body/2nd-body/3rd-body
i [ 5.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 3/16 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + 16 ) + 3 ) + 6 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ]

; tak/snatch
i [ 6.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 3/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( 256 ) ] [ ( 12 ) ] [ ( 9 ) ] [ ( 5 ) ] [ ( 8 ) ] [ ( 8 ) ]

; tak/snatch/2nd-snatch
i [ 6.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 3/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 ) + 0 ) + 4 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( 256 ) + 0 ) ] [ ( ( 12 ) + 0 ) ] [ ( ( 9 ) + 0 ) ] [ ( ( 5 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; tak/snatch/2nd-snatch/3rd-snatch
i [ 6.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 3/16 ) + 0 ) + (1/2^8) ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + 0 ) + 4 ) + 9 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 256 ) + 0 ) + 0 ) ] [ ( ( ( 12 ) + 0 ) + 0 ) ] [ ( ( ( 9 ) + 0 ) + 0 ) ] [ ( ( ( 5 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

}

}

; sik at step ( ( 0 ) + 4/16 + $chord / 2^13 ) for length ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) with pitch ( ( 40 ) + 0 + 50 + $chord * -10 ) and distance ( ( 0 ) + 3 + $chord/3 )

{ 8 chord

#define ornaments #1#

{ $ornaments ornament

; sik/sub
i [ 10.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 4/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 96 ) ] [ ( 23 ) ] [ ( 8 + 3 ) ] [ ( 8 + 3 ) ] [ ( 13 ) ] [ ( 8 + 3 ) ]

; sik/sub/2nd-sub
i [ 10.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 4/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 1 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sik/sub/2nd-sub/3rd-sub
i [ 10.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 4/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 1 ) + 4 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sik/sub/higher-sub
i [ 10.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 4/16 + $chord / 2^13 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sik/sub/higher-sub/2nd-higher-sub
i [ 10.4 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 4/16 + $chord / 2^13 ) + 0 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) + 2 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sik/sub/higher-sub/2nd-higher-sub/3rd-higher-sub
i [ 10.5 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( ( 0 ) + 4/16 + $chord / 2^13 ) + 0 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) * 1 ) * 1 ) ] [ ( ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) + 2 ) + 5 ) ] [ ( ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( ( ( 96 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 23 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 13 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ]

; sik/body
i [ 11.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 4/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 96 ) ] [ ( 10 ) ] [ ( 8 + 1 ) ] [ ( 8 + 1 ) ] [ ( 13 ) ] [ ( 8 + 1 ) ] [ ( 0 ) ]

; sik/body/2nd-body
i [ 11.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 4/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) + 3 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 10 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 0 ) + 0 ) ]

; sik/body/2nd-body/3rd-body
i [ 11.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 4/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) + 3 ) + 6 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ]

; sik/snatch
i [ 12.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 4/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 256 ) ] [ ( 12 ) ] [ ( 9 + 1 ) ] [ ( 5 + 1 ) ] [ ( 8 ) ] [ ( 8 ) ]

; sik/snatch/2nd-snatch
i [ 12.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 4/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 4 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 256 ) + 0 ) ] [ ( ( 12 ) + 0 ) ] [ ( ( 9 + 1 ) + 0 ) ] [ ( ( 5 + 1 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; sik/snatch/2nd-snatch/3rd-snatch
i [ 12.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 4/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 4 ) + 9 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 256 ) + 0 ) + 0 ) ] [ ( ( ( 12 ) + 0 ) + 0 ) ] [ ( ( ( 9 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 5 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

}

}

; sak at step ( ( 0 ) + 5/16 ) for length ( ( (1/$measure) ) * 1 / $ornaments ) with pitch ( ( 40 ) + 0 + 10 + $chord * 10 + 10 + $chord * 10 ) and distance ( ( 0 ) + 2 )

{ 2 chord

#define ornaments #1#

{ $ornaments ornament

; sak/sub
i [ 7.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 5/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) ] [ ( ( ( 0 ) + 2 ) + 0 ) ] [ ( 96 ) ] [ ( 23 ) ] [ ( 8 + 3 ) ] [ ( 8 + 3 ) ] [ ( 13 ) ] [ ( 8 + 3 ) ]

; sak/sub/2nd-sub
i [ 7.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 5/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 1 ) ] [ ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sak/sub/2nd-sub/3rd-sub
i [ 7.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 5/16 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 1 ) + 4 ) ] [ ( ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sak/sub/higher-sub
i [ 7.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 5/16 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) ] [ ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 16 ) ] [ ( ( ( ( 0 ) + 2 ) + 0 ) + 2 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sak/sub/higher-sub/2nd-higher-sub
i [ 7.4 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 5/16 ) + 0 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 16 ) + 2 ) ] [ ( ( ( ( ( 0 ) + 2 ) + 0 ) + 2 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sak/sub/higher-sub/2nd-higher-sub/3rd-higher-sub
i [ 7.5 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( ( 0 ) + 5/16 ) + 0 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) * 1 ) * 1 ) ] [ ( ( ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 16 ) + 2 ) + 5 ) ] [ ( ( ( ( ( ( 0 ) + 2 ) + 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( ( ( 96 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 23 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 13 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ]

; sak/body
i [ 8.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 5/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 16 ) ] [ ( ( ( 0 ) + 2 ) + 0 ) ] [ ( 96 ) ] [ ( 10 ) ] [ ( 8 + 1 ) ] [ ( 8 + 1 ) ] [ ( 13 ) ] [ ( 8 + 1 ) ] [ ( 0 ) ]

; sak/body/2nd-body
i [ 8.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 5/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 16 ) + 3 ) ] [ ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 10 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 0 ) + 0 ) ]

; sak/body/2nd-body/3rd-body
i [ 8.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 5/16 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 16 ) + 3 ) + 6 ) ] [ ( ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ]

; sak/snatch
i [ 9.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 5/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) ] [ ( ( ( 0 ) + 2 ) + 0 ) ] [ ( 256 ) ] [ ( 12 ) ] [ ( 9 + 1 ) ] [ ( 5 + 1 ) ] [ ( 8 ) ] [ ( 8 ) ]

; sak/snatch/2nd-snatch
i [ 9.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 5/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 4 ) ] [ ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( 256 ) + 0 ) ] [ ( ( 12 ) + 0 ) ] [ ( ( 9 + 1 ) + 0 ) ] [ ( ( 5 + 1 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; sak/snatch/2nd-snatch/3rd-snatch
i [ 9.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 5/16 ) + 0 ) + (1/2^8) ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 4 ) + 9 ) ] [ ( ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 256 ) + 0 ) + 0 ) ] [ ( ( ( 12 ) + 0 ) + 0 ) ] [ ( ( ( 9 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 5 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

}

}

; tak at step ( ( 0 ) + 6/16 ) for length ( ( (1/$measure) ) * 1 / $ornaments ) with pitch ( ( 40 ) + 0 ) and distance ( ( 0 ) + 0 )

{ 1 chord

#define ornaments #1#

{ $ornaments ornament

; tak/sub
i [ 4.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 6/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( 96 ) ] [ ( 23 ) ] [ ( 8 ) ] [ ( 8 ) ] [ ( 13 ) ] [ ( 8 ) ]

; tak/sub/2nd-sub
i [ 4.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 6/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 ) + 0 ) + 1 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; tak/sub/2nd-sub/3rd-sub
i [ 4.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 6/16 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + 0 ) + 1 ) + 4 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

; tak/sub/higher-sub
i [ 4.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 6/16 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) ] [ ( ( ( ( 64 ) + 0 ) + 0 ) + 16 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 2 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; tak/sub/higher-sub/2nd-higher-sub
i [ 4.4 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 6/16 ) + 0 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + 0 ) + 16 ) + 2 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 2 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

; tak/sub/higher-sub/2nd-higher-sub/3rd-higher-sub
i [ 4.5 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( ( 0 ) + 6/16 ) + 0 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) * 1 ) * 1 ) ] [ ( ( ( ( ( ( 64 ) + 0 ) + 0 ) + 16 ) + 2 ) + 5 ) ] [ ( ( ( ( ( ( 0 ) + 0 ) + 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( ( ( 96 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 23 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 13 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 ) + 0 ) + 0 ) + 0 ) ]

; tak/body
i [ 5.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 6/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + 16 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( 96 ) ] [ ( 10 ) ] [ ( 8 ) ] [ ( 8 ) ] [ ( 13 ) ] [ ( 8 ) ] [ ( 0 ) ]

; tak/body/2nd-body
i [ 5.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 6/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 ) + 16 ) + 3 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 10 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 0 ) + 0 ) ]

; tak/body/2nd-body/3rd-body
i [ 5.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 6/16 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + 16 ) + 3 ) + 6 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ]

; tak/snatch
i [ 6.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 6/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( 256 ) ] [ ( 12 ) ] [ ( 9 ) ] [ ( 5 ) ] [ ( 8 ) ] [ ( 8 ) ]

; tak/snatch/2nd-snatch
i [ 6.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 6/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 ) + 0 ) + 4 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( 256 ) + 0 ) ] [ ( ( 12 ) + 0 ) ] [ ( ( 9 ) + 0 ) ] [ ( ( 5 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; tak/snatch/2nd-snatch/3rd-snatch
i [ 6.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 6/16 ) + 0 ) + (1/2^8) ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + 0 ) + 4 ) + 9 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 256 ) + 0 ) + 0 ) ] [ ( ( ( 12 ) + 0 ) + 0 ) ] [ ( ( ( 9 ) + 0 ) + 0 ) ] [ ( ( ( 5 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

}

}

; sik at step ( ( 0 ) + 7/16 + $chord / 2^13 ) for length ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) with pitch ( ( 40 ) + 0 + 50 + $chord * -10 ) and distance ( ( 0 ) + 3 + $chord/3 )

{ 8 chord

#define ornaments #1#

{ $ornaments ornament

; sik/sub
i [ 10.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 7/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 96 ) ] [ ( 23 ) ] [ ( 8 + 3 ) ] [ ( 8 + 3 ) ] [ ( 13 ) ] [ ( 8 + 3 ) ]

; sik/sub/2nd-sub
i [ 10.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 7/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 1 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sik/sub/2nd-sub/3rd-sub
i [ 10.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 7/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 1 ) + 4 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sik/sub/higher-sub
i [ 10.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 7/16 + $chord / 2^13 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sik/sub/higher-sub/2nd-higher-sub
i [ 10.4 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 7/16 + $chord / 2^13 ) + 0 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) + 2 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sik/sub/higher-sub/2nd-higher-sub/3rd-higher-sub
i [ 10.5 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( ( 0 ) + 7/16 + $chord / 2^13 ) + 0 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) * 1 ) * 1 ) ] [ ( ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) + 2 ) + 5 ) ] [ ( ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( ( ( 96 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 23 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 13 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ]

; sik/body
i [ 11.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 7/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 96 ) ] [ ( 10 ) ] [ ( 8 + 1 ) ] [ ( 8 + 1 ) ] [ ( 13 ) ] [ ( 8 + 1 ) ] [ ( 0 ) ]

; sik/body/2nd-body
i [ 11.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 7/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) + 3 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 10 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 0 ) + 0 ) ]

; sik/body/2nd-body/3rd-body
i [ 11.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 7/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) + 3 ) + 6 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ]

; sik/snatch
i [ 12.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 7/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 256 ) ] [ ( 12 ) ] [ ( 9 + 1 ) ] [ ( 5 + 1 ) ] [ ( 8 ) ] [ ( 8 ) ]

; sik/snatch/2nd-snatch
i [ 12.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 7/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 4 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 256 ) + 0 ) ] [ ( ( 12 ) + 0 ) ] [ ( ( 9 + 1 ) + 0 ) ] [ ( ( 5 + 1 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; sik/snatch/2nd-snatch/3rd-snatch
i [ 12.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 7/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 4 ) + 9 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 256 ) + 0 ) + 0 ) ] [ ( ( ( 12 ) + 0 ) + 0 ) ] [ ( ( ( 9 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 5 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

}

}

; dom at step ( ( 0 ) + 8/16 ) for length ( ( (1/$measure) ) * 1 / $ornaments ) with pitch ( ( 40 ) + 0 ) and distance ( ( 0 ) + 0 )

{ 1 chord

#define ornaments #1#

{ $ornaments ornament

; dom/sub
i [ 1.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 8/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + -32 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( 64 ) ] [ ( 6 ) ] [ ( 5 ) ] [ ( 4 ) ] [ ( 4 ) ] [ ( 1 ) ]

; dom/sub/higher
i [ 1.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 8/16 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^2) ) ] [ ( ( ( ( 64 ) + 0 ) + -32 ) + 32 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 1 ) ] [ ( ( 64 ) + 0 ) ] [ ( ( 6 ) + 3 ) ] [ ( ( 5 ) + 1 ) ] [ ( ( 4 ) + 1 ) ] [ ( ( 4 ) + 0 ) ] [ ( ( 1 ) + 1 ) ]

; dom/snatch
i [ 2.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 8/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + -16 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( 96 ) ] [ ( 7 ) ] [ ( 5 ) ] [ ( 5 ) ] [ ( 10 ) ] [ ( 10 ) ]

; dom/snatch/higher
i [ 2.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 8/16 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 ) + -16 ) + 16 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 1 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 7 ) + 0 ) ] [ ( ( 5 ) + 0 ) ] [ ( ( 5 ) + 0 ) ] [ ( ( 10 ) + 0 ) ] [ ( ( 10 ) + 0 ) ]

; dom/snatch/higher/higher
i [ 2.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 8/16 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + -16 ) + 16 ) + 16 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 1 ) + 2 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 7 ) + 0 ) + 0 ) ] [ ( ( ( 5 ) + 0 ) + 0 ) ] [ ( ( ( 5 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ]

; dom/body
i [ 3.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 8/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + -32 ) ] [ ( ( ( 0 ) + 0 ) + 1 ) ] [ ( 64 ) ] [ ( 6 ) ] [ ( 5 ) ] [ ( 4 ) ] [ ( 8 ) ] [ ( 3 ) ] [ ( -1 ) ]

}

}

; sik at step ( ( 0 ) + 9/16 + $chord / 2^13 ) for length ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) with pitch ( ( 40 ) + 0 + 50 + $chord * -10 ) and distance ( ( 0 ) + 3 + $chord/3 )

{ 8 chord

#define ornaments #1#

{ $ornaments ornament

; sik/sub
i [ 10.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 9/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 96 ) ] [ ( 23 ) ] [ ( 8 + 3 ) ] [ ( 8 + 3 ) ] [ ( 13 ) ] [ ( 8 + 3 ) ]

; sik/sub/2nd-sub
i [ 10.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 9/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 1 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sik/sub/2nd-sub/3rd-sub
i [ 10.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 9/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 1 ) + 4 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sik/sub/higher-sub
i [ 10.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 9/16 + $chord / 2^13 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sik/sub/higher-sub/2nd-higher-sub
i [ 10.4 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 9/16 + $chord / 2^13 ) + 0 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) + 2 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sik/sub/higher-sub/2nd-higher-sub/3rd-higher-sub
i [ 10.5 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( ( 0 ) + 9/16 + $chord / 2^13 ) + 0 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) * 1 ) * 1 ) ] [ ( ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) + 2 ) + 5 ) ] [ ( ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( ( ( 96 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 23 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 13 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ]

; sik/body
i [ 11.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 9/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 96 ) ] [ ( 10 ) ] [ ( 8 + 1 ) ] [ ( 8 + 1 ) ] [ ( 13 ) ] [ ( 8 + 1 ) ] [ ( 0 ) ]

; sik/body/2nd-body
i [ 11.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 9/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) + 3 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 10 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 0 ) + 0 ) ]

; sik/body/2nd-body/3rd-body
i [ 11.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 9/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) + 3 ) + 6 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ]

; sik/snatch
i [ 12.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 9/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 256 ) ] [ ( 12 ) ] [ ( 9 + 1 ) ] [ ( 5 + 1 ) ] [ ( 8 ) ] [ ( 8 ) ]

; sik/snatch/2nd-snatch
i [ 12.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 9/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 4 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 256 ) + 0 ) ] [ ( ( 12 ) + 0 ) ] [ ( ( 9 + 1 ) + 0 ) ] [ ( ( 5 + 1 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; sik/snatch/2nd-snatch/3rd-snatch
i [ 12.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 9/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 4 ) + 9 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 256 ) + 0 ) + 0 ) ] [ ( ( ( 12 ) + 0 ) + 0 ) ] [ ( ( ( 9 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 5 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

}

}

; tak at step ( ( 0 ) + 10/16 ) for length ( ( (1/$measure) ) * 1 / $ornaments ) with pitch ( ( 40 ) + 0 ) and distance ( ( 0 ) + 0 )

{ 1 chord

#define ornaments #1#

{ $ornaments ornament

; tak/sub
i [ 4.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 10/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( 96 ) ] [ ( 23 ) ] [ ( 8 ) ] [ ( 8 ) ] [ ( 13 ) ] [ ( 8 ) ]

; tak/sub/2nd-sub
i [ 4.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 10/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 ) + 0 ) + 1 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; tak/sub/2nd-sub/3rd-sub
i [ 4.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 10/16 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + 0 ) + 1 ) + 4 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

; tak/sub/higher-sub
i [ 4.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 10/16 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) ] [ ( ( ( ( 64 ) + 0 ) + 0 ) + 16 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 2 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; tak/sub/higher-sub/2nd-higher-sub
i [ 4.4 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 10/16 ) + 0 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + 0 ) + 16 ) + 2 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 2 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

; tak/sub/higher-sub/2nd-higher-sub/3rd-higher-sub
i [ 4.5 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( ( 0 ) + 10/16 ) + 0 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) * 1 ) * 1 ) ] [ ( ( ( ( ( ( 64 ) + 0 ) + 0 ) + 16 ) + 2 ) + 5 ) ] [ ( ( ( ( ( ( 0 ) + 0 ) + 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( ( ( 96 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 23 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 13 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 ) + 0 ) + 0 ) + 0 ) ]

; tak/body
i [ 5.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 10/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + 16 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( 96 ) ] [ ( 10 ) ] [ ( 8 ) ] [ ( 8 ) ] [ ( 13 ) ] [ ( 8 ) ] [ ( 0 ) ]

; tak/body/2nd-body
i [ 5.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 10/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 ) + 16 ) + 3 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 10 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 0 ) + 0 ) ]

; tak/body/2nd-body/3rd-body
i [ 5.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 10/16 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + 16 ) + 3 ) + 6 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ]

; tak/snatch
i [ 6.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 10/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( 256 ) ] [ ( 12 ) ] [ ( 9 ) ] [ ( 5 ) ] [ ( 8 ) ] [ ( 8 ) ]

; tak/snatch/2nd-snatch
i [ 6.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 10/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 ) + 0 ) + 4 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( 256 ) + 0 ) ] [ ( ( 12 ) + 0 ) ] [ ( ( 9 ) + 0 ) ] [ ( ( 5 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; tak/snatch/2nd-snatch/3rd-snatch
i [ 6.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 10/16 ) + 0 ) + (1/2^8) ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + 0 ) + 4 ) + 9 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 256 ) + 0 ) + 0 ) ] [ ( ( ( 12 ) + 0 ) + 0 ) ] [ ( ( ( 9 ) + 0 ) + 0 ) ] [ ( ( ( 5 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

}

}

; sak at step ( ( 0 ) + 11/16 ) for length ( ( (1/$measure) ) * 1 / $ornaments ) with pitch ( ( 40 ) + 0 + 10 + $chord * 10 + 10 + $chord * 10 ) and distance ( ( 0 ) + 2 )

{ 2 chord

#define ornaments #1#

{ $ornaments ornament

; sak/sub
i [ 7.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 11/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) ] [ ( ( ( 0 ) + 2 ) + 0 ) ] [ ( 96 ) ] [ ( 23 ) ] [ ( 8 + 3 ) ] [ ( 8 + 3 ) ] [ ( 13 ) ] [ ( 8 + 3 ) ]

; sak/sub/2nd-sub
i [ 7.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 11/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 1 ) ] [ ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sak/sub/2nd-sub/3rd-sub
i [ 7.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 11/16 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 1 ) + 4 ) ] [ ( ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sak/sub/higher-sub
i [ 7.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 11/16 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) ] [ ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 16 ) ] [ ( ( ( ( 0 ) + 2 ) + 0 ) + 2 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sak/sub/higher-sub/2nd-higher-sub
i [ 7.4 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 11/16 ) + 0 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 16 ) + 2 ) ] [ ( ( ( ( ( 0 ) + 2 ) + 0 ) + 2 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sak/sub/higher-sub/2nd-higher-sub/3rd-higher-sub
i [ 7.5 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( ( 0 ) + 11/16 ) + 0 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) * 1 ) * 1 ) ] [ ( ( ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 16 ) + 2 ) + 5 ) ] [ ( ( ( ( ( ( 0 ) + 2 ) + 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( ( ( 96 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 23 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 13 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ]

; sak/body
i [ 8.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 11/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 16 ) ] [ ( ( ( 0 ) + 2 ) + 0 ) ] [ ( 96 ) ] [ ( 10 ) ] [ ( 8 + 1 ) ] [ ( 8 + 1 ) ] [ ( 13 ) ] [ ( 8 + 1 ) ] [ ( 0 ) ]

; sak/body/2nd-body
i [ 8.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 11/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 16 ) + 3 ) ] [ ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 10 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 0 ) + 0 ) ]

; sak/body/2nd-body/3rd-body
i [ 8.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 11/16 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 16 ) + 3 ) + 6 ) ] [ ( ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ]

; sak/snatch
i [ 9.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 11/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) ] [ ( ( ( 0 ) + 2 ) + 0 ) ] [ ( 256 ) ] [ ( 12 ) ] [ ( 9 + 1 ) ] [ ( 5 + 1 ) ] [ ( 8 ) ] [ ( 8 ) ]

; sak/snatch/2nd-snatch
i [ 9.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 11/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 4 ) ] [ ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( 256 ) + 0 ) ] [ ( ( 12 ) + 0 ) ] [ ( ( 9 + 1 ) + 0 ) ] [ ( ( 5 + 1 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; sak/snatch/2nd-snatch/3rd-snatch
i [ 9.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 11/16 ) + 0 ) + (1/2^8) ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 16 + $chord * 16 + 16 + $chord * 16 ) + 0 ) + 4 ) + 9 ) ] [ ( ( ( ( ( 0 ) + 2 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 256 ) + 0 ) + 0 ) ] [ ( ( ( 12 ) + 0 ) + 0 ) ] [ ( ( ( 9 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 5 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

}

}

; tak at step ( ( 0 ) + 12/16 ) for length ( ( (1/$measure) ) * 1 / $ornaments ) with pitch ( ( 40 ) + 0 ) and distance ( ( 0 ) + 0 )

{ 1 chord

#define ornaments #1#

{ $ornaments ornament

; tak/sub
i [ 4.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 12/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( 96 ) ] [ ( 23 ) ] [ ( 8 ) ] [ ( 8 ) ] [ ( 13 ) ] [ ( 8 ) ]

; tak/sub/2nd-sub
i [ 4.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 12/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 ) + 0 ) + 1 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; tak/sub/2nd-sub/3rd-sub
i [ 4.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 12/16 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + 0 ) + 1 ) + 4 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

; tak/sub/higher-sub
i [ 4.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 12/16 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) ] [ ( ( ( ( 64 ) + 0 ) + 0 ) + 16 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 2 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; tak/sub/higher-sub/2nd-higher-sub
i [ 4.4 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 12/16 ) + 0 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + 0 ) + 16 ) + 2 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 2 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

; tak/sub/higher-sub/2nd-higher-sub/3rd-higher-sub
i [ 4.5 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( ( 0 ) + 12/16 ) + 0 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * (1/2^3) ) * 1 ) * 1 ) ] [ ( ( ( ( ( ( 64 ) + 0 ) + 0 ) + 16 ) + 2 ) + 5 ) ] [ ( ( ( ( ( ( 0 ) + 0 ) + 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( ( ( 96 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 23 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 13 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 ) + 0 ) + 0 ) + 0 ) ]

; tak/body
i [ 5.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 12/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + 16 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( 96 ) ] [ ( 10 ) ] [ ( 8 ) ] [ ( 8 ) ] [ ( 13 ) ] [ ( 8 ) ] [ ( 0 ) ]

; tak/body/2nd-body
i [ 5.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 12/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 ) + 16 ) + 3 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 10 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 0 ) + 0 ) ]

; tak/body/2nd-body/3rd-body
i [ 5.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 12/16 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + 16 ) + 3 ) + 6 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ]

; tak/snatch
i [ 6.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 12/16 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ] [ ( 256 ) ] [ ( 12 ) ] [ ( 9 ) ] [ ( 5 ) ] [ ( 8 ) ] [ ( 8 ) ]

; tak/snatch/2nd-snatch
i [ 6.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 12/16 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 ) + 0 ) + 4 ) ] [ ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( 256 ) + 0 ) ] [ ( ( 12 ) + 0 ) ] [ ( ( 9 ) + 0 ) ] [ ( ( 5 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; tak/snatch/2nd-snatch/3rd-snatch
i [ 6.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 12/16 ) + 0 ) + (1/2^8) ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 ) + 0 ) + 4 ) + 9 ) ] [ ( ( ( ( ( 0 ) + 0 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 256 ) + 0 ) + 0 ) ] [ ( ( ( 12 ) + 0 ) + 0 ) ] [ ( ( ( 9 ) + 0 ) + 0 ) ] [ ( ( ( 5 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

}

}

; sik at step ( ( 0 ) + 13/16 + $chord / 2^13 ) for length ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) with pitch ( ( 40 ) + 0 + 50 + $chord * -10 ) and distance ( ( 0 ) + 3 + $chord/3 )

{ 8 chord

#define ornaments #1#

{ $ornaments ornament

; sik/sub
i [ 10.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 13/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 96 ) ] [ ( 23 ) ] [ ( 8 + 3 ) ] [ ( 8 + 3 ) ] [ ( 13 ) ] [ ( 8 + 3 ) ]

; sik/sub/2nd-sub
i [ 10.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 13/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 1 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sik/sub/2nd-sub/3rd-sub
i [ 10.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 13/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 1 ) + 4 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sik/sub/higher-sub
i [ 10.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 13/16 + $chord / 2^13 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sik/sub/higher-sub/2nd-higher-sub
i [ 10.4 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 13/16 + $chord / 2^13 ) + 0 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) + 2 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sik/sub/higher-sub/2nd-higher-sub/3rd-higher-sub
i [ 10.5 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( ( 0 ) + 13/16 + $chord / 2^13 ) + 0 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) * 1 ) * 1 ) ] [ ( ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) + 2 ) + 5 ) ] [ ( ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( ( ( 96 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 23 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 13 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ]

; sik/body
i [ 11.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 13/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 96 ) ] [ ( 10 ) ] [ ( 8 + 1 ) ] [ ( 8 + 1 ) ] [ ( 13 ) ] [ ( 8 + 1 ) ] [ ( 0 ) ]

; sik/body/2nd-body
i [ 11.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 13/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) + 3 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 10 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 0 ) + 0 ) ]

; sik/body/2nd-body/3rd-body
i [ 11.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 13/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) + 3 ) + 6 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ]

; sik/snatch
i [ 12.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 13/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 256 ) ] [ ( 12 ) ] [ ( 9 + 1 ) ] [ ( 5 + 1 ) ] [ ( 8 ) ] [ ( 8 ) ]

; sik/snatch/2nd-snatch
i [ 12.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 13/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 4 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 256 ) + 0 ) ] [ ( ( 12 ) + 0 ) ] [ ( ( 9 + 1 ) + 0 ) ] [ ( ( 5 + 1 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; sik/snatch/2nd-snatch/3rd-snatch
i [ 12.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 13/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 4 ) + 9 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 256 ) + 0 ) + 0 ) ] [ ( ( ( 12 ) + 0 ) + 0 ) ] [ ( ( ( 9 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 5 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

}

}

; sik at step ( ( 0 ) + 14/16 + $chord / 2^13 ) for length ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) with pitch ( ( 40 ) + 0 + 50 + $chord * -10 ) and distance ( ( 0 ) + 3 + $chord/3 )

{ 8 chord

#define ornaments #1#

{ $ornaments ornament

; sik/sub
i [ 10.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 14/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 96 ) ] [ ( 23 ) ] [ ( 8 + 3 ) ] [ ( 8 + 3 ) ] [ ( 13 ) ] [ ( 8 + 3 ) ]

; sik/sub/2nd-sub
i [ 10.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 14/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 1 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sik/sub/2nd-sub/3rd-sub
i [ 10.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 14/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 1 ) + 4 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sik/sub/higher-sub
i [ 10.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 14/16 + $chord / 2^13 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sik/sub/higher-sub/2nd-higher-sub
i [ 10.4 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 14/16 + $chord / 2^13 ) + 0 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) + 2 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sik/sub/higher-sub/2nd-higher-sub/3rd-higher-sub
i [ 10.5 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( ( 0 ) + 14/16 + $chord / 2^13 ) + 0 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) * 1 ) * 1 ) ] [ ( ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) + 2 ) + 5 ) ] [ ( ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( ( ( 96 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 23 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 13 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ]

; sik/body
i [ 11.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 14/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 96 ) ] [ ( 10 ) ] [ ( 8 + 1 ) ] [ ( 8 + 1 ) ] [ ( 13 ) ] [ ( 8 + 1 ) ] [ ( 0 ) ]

; sik/body/2nd-body
i [ 11.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 14/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) + 3 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 10 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 0 ) + 0 ) ]

; sik/body/2nd-body/3rd-body
i [ 11.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 14/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) + 3 ) + 6 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ]

; sik/snatch
i [ 12.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 14/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 256 ) ] [ ( 12 ) ] [ ( 9 + 1 ) ] [ ( 5 + 1 ) ] [ ( 8 ) ] [ ( 8 ) ]

; sik/snatch/2nd-snatch
i [ 12.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 14/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 4 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 256 ) + 0 ) ] [ ( ( 12 ) + 0 ) ] [ ( ( 9 + 1 ) + 0 ) ] [ ( ( 5 + 1 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; sik/snatch/2nd-snatch/3rd-snatch
i [ 12.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 14/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 4 ) + 9 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 256 ) + 0 ) + 0 ) ] [ ( ( ( 12 ) + 0 ) + 0 ) ] [ ( ( ( 9 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 5 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

}

}

; sik at step ( ( 0 ) + 15/16 + $chord / 2^13 ) for length ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) with pitch ( ( 40 ) + 0 + 50 + $chord * -10 ) and distance ( ( 0 ) + 3 + $chord/3 )

{ 8 chord

#define ornaments #1#

{ $ornaments ornament

; sik/sub
i [ 10.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 15/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 96 ) ] [ ( 23 ) ] [ ( 8 + 3 ) ] [ ( 8 + 3 ) ] [ ( 13 ) ] [ ( 8 + 3 ) ]

; sik/sub/2nd-sub
i [ 10.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 15/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 1 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sik/sub/2nd-sub/3rd-sub
i [ 10.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 15/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 1 ) + 4 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sik/sub/higher-sub
i [ 10.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 15/16 + $chord / 2^13 ) + 0 ) + 0 ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 23 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 3 ) + 0 ) ]

; sik/sub/higher-sub/2nd-higher-sub
i [ 10.4 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 15/16 + $chord / 2^13 ) + 0 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) + 2 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 23 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 3 ) + 0 ) + 0 ) ]

; sik/sub/higher-sub/2nd-higher-sub/3rd-higher-sub
i [ 10.5 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( ( 0 ) + 15/16 + $chord / 2^13 ) + 0 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * (1/2^3) ) * 1 ) * 1 ) ] [ ( ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 16 ) + 2 ) + 5 ) ] [ ( ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 2 ) + 0 ) + 0 ) ] [ ( ( ( ( 96 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 23 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 13 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( ( 8 + 3 ) + 0 ) + 0 ) + 0 ) ]

; sik/body
i [ 11.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 15/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 96 ) ] [ ( 10 ) ] [ ( 8 + 1 ) ] [ ( 8 + 1 ) ] [ ( 13 ) ] [ ( 8 + 1 ) ] [ ( 0 ) ]

; sik/body/2nd-body
i [ 11.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 15/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) + 3 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 96 ) + 0 ) ] [ ( ( 10 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 8 + 1 ) + 0 ) ] [ ( ( 0 ) + 0 ) ]

; sik/body/2nd-body/3rd-body
i [ 11.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 15/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 16 ) + 3 ) + 6 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 96 ) + 0 ) + 0 ) ] [ ( ( ( 10 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 8 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 0 ) + 0 ) + 0 ) ]

; sik/snatch
i [ 12.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 15/16 + $chord / 2^13 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) ] [ ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) ] [ ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) ] [ ( 256 ) ] [ ( 12 ) ] [ ( 9 + 1 ) ] [ ( 5 + 1 ) ] [ ( 8 ) ] [ ( 8 ) ]

; sik/snatch/2nd-snatch
i [ 12.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 15/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 4 ) ] [ ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) ] [ ( ( 256 ) + 0 ) ] [ ( ( 12 ) + 0 ) ] [ ( ( 9 + 1 ) + 0 ) ] [ ( ( 5 + 1 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 8 ) + 0 ) ]

; sik/snatch/2nd-snatch/3rd-snatch
i [ 12.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 15/16 + $chord / 2^13 ) + 0 ) + (1/2^8) ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments / 2^8 ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 80 + $chord * -16 ) + 0 ) + 4 ) + 9 ) ] [ ( ( ( ( ( 0 ) + 3 + $chord/3 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 256 ) + 0 ) + 0 ) ] [ ( ( ( 12 ) + 0 ) + 0 ) ] [ ( ( ( 9 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 5 + 1 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ]

}

}

; sagat at step ( ( 0 ) + 10/16 + $chord / 2^7 ) for length ( ( (1/$measure) ) * 1 / $ornaments ) with pitch ( ( 40 ) + 0 + 40 ) and distance ( ( 0 ) + 1 )

{ 2 chord

#define ornaments #1#

{ $ornaments ornament

; sagat/sub
i [ 13.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 10/16 + $chord / 2^7 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 + 64 ) + 0 ) ] [ ( ( ( 0 ) + 1 ) + 1 ) ] [ ( 352 ) ] [ ( 32 ) ] [ ( 23 ) ] [ ( 5 ) ] [ ( 100 ) ] [ ( 8 ) ]

; sagat/body
i [ 14.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 10/16 + $chord / 2^7 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 + 64 ) + 16 ) ] [ ( ( ( 0 ) + 1 ) + 1 ) ] [ ( 288 ) ] [ ( 32 ) ] [ ( 28 ) ] [ ( 7 ) ] [ ( 100 ) ] [ ( 13 ) ] [ ( 1 ) ]

; sagat/body/2nd-body
i [ 14.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 10/16 + $chord / 2^7 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 64 ) + 16 ) + 3 ) ] [ ( ( ( ( 0 ) + 1 ) + 1 ) + 0 ) ] [ ( ( 288 ) + 0 ) ] [ ( ( 32 ) + 0 ) ] [ ( ( 28 ) + 0 ) ] [ ( ( 7 ) + 0 ) ] [ ( ( 100 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 1 ) + 0 ) ]

; sagat/body/2nd-body/3rd-body
i [ 14.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 10/16 + $chord / 2^7 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 64 ) + 16 ) + 3 ) + 6 ) ] [ ( ( ( ( ( 0 ) + 1 ) + 1 ) + 0 ) + 0 ) ] [ ( ( ( 288 ) + 0 ) + 0 ) ] [ ( ( ( 32 ) + 0 ) + 0 ) ] [ ( ( ( 28 ) + 0 ) + 0 ) ] [ ( ( ( 7 ) + 0 ) + 0 ) ] [ ( ( ( 100 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 1 ) + 0 ) + 0 ) ]

; sagat/snatch
i [ 15.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 10/16 + $chord / 2^7 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 + 64 ) + 16 ) ] [ ( ( ( 0 ) + 1 ) + 0 ) ] [ ( 288 ) ] [ ( 14 ) ] [ ( 15 ) ] [ ( 8 ) ] [ ( 100 ) ] [ ( 13 ) ]

; sagat/snatch/2nd-snatch
i [ 15.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 10/16 + $chord / 2^7 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 64 ) + 16 ) + 4 ) ] [ ( ( ( ( 0 ) + 1 ) + 0 ) + 0 ) ] [ ( ( 288 ) + 0 ) ] [ ( ( 14 ) + 0 ) ] [ ( ( 15 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 100 ) + 0 ) ] [ ( ( 13 ) + 0 ) ]

; sagat/snatch/2nd-snatch/3rd-snatch
i [ 15.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 10/16 + $chord / 2^7 ) + 0 ) + (1/2^8) ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 64 ) + 16 ) + 4 ) + 9 ) ] [ ( ( ( ( ( 0 ) + 1 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 288 ) + 0 ) + 0 ) ] [ ( ( ( 14 ) + 0 ) + 0 ) ] [ ( ( ( 15 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 100 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ]

}

}

; sagat at step ( ( 0 ) + 12/16 + $chord / 2^7 ) for length ( ( (1/$measure) ) * 1 / $ornaments ) with pitch ( ( 40 ) + 0 + 40 ) and distance ( ( 0 ) + 1 )

{ 2 chord

#define ornaments #1#

{ $ornaments ornament

; sagat/sub
i [ 13.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 12/16 + $chord / 2^7 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 + 64 ) + 0 ) ] [ ( ( ( 0 ) + 1 ) + 1 ) ] [ ( 352 ) ] [ ( 32 ) ] [ ( 23 ) ] [ ( 5 ) ] [ ( 100 ) ] [ ( 8 ) ]

; sagat/body
i [ 14.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 12/16 + $chord / 2^7 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 + 64 ) + 16 ) ] [ ( ( ( 0 ) + 1 ) + 1 ) ] [ ( 288 ) ] [ ( 32 ) ] [ ( 28 ) ] [ ( 7 ) ] [ ( 100 ) ] [ ( 13 ) ] [ ( 1 ) ]

; sagat/body/2nd-body
i [ 14.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 12/16 + $chord / 2^7 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 64 ) + 16 ) + 3 ) ] [ ( ( ( ( 0 ) + 1 ) + 1 ) + 0 ) ] [ ( ( 288 ) + 0 ) ] [ ( ( 32 ) + 0 ) ] [ ( ( 28 ) + 0 ) ] [ ( ( 7 ) + 0 ) ] [ ( ( 100 ) + 0 ) ] [ ( ( 13 ) + 0 ) ] [ ( ( 1 ) + 0 ) ]

; sagat/body/2nd-body/3rd-body
i [ 14.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 12/16 + $chord / 2^7 ) + 0 ) + (1/2^8) ) + (1/2^8) ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 64 ) + 16 ) + 3 ) + 6 ) ] [ ( ( ( ( ( 0 ) + 1 ) + 1 ) + 0 ) + 0 ) ] [ ( ( ( 288 ) + 0 ) + 0 ) ] [ ( ( ( 32 ) + 0 ) + 0 ) ] [ ( ( ( 28 ) + 0 ) + 0 ) ] [ ( ( ( 7 ) + 0 ) + 0 ) ] [ ( ( ( 100 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ] [ ( ( ( 1 ) + 0 ) + 0 ) ]

; sagat/snatch
i [ 15.1 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( 0 ) + 12/16 + $chord / 2^7 ) + 0 ) ] [ ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) ] [ ( ( ( 64 ) + 0 + 64 ) + 16 ) ] [ ( ( ( 0 ) + 1 ) + 0 ) ] [ ( 288 ) ] [ ( 14 ) ] [ ( 15 ) ] [ ( 8 ) ] [ ( 100 ) ] [ ( 13 ) ]

; sagat/snatch/2nd-snatch
i [ 15.2 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( 0 ) + 12/16 + $chord / 2^7 ) + 0 ) + (1/2^8) ) ] [ ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) ] [ ( ( ( ( 64 ) + 0 + 64 ) + 16 ) + 4 ) ] [ ( ( ( ( 0 ) + 1 ) + 0 ) + 0 ) ] [ ( ( 288 ) + 0 ) ] [ ( ( 14 ) + 0 ) ] [ ( ( 15 ) + 0 ) ] [ ( ( 8 ) + 0 ) ] [ ( ( 100 ) + 0 ) ] [ ( ( 13 ) + 0 ) ]

; sagat/snatch/2nd-snatch/3rd-snatch
i [ 15.3 + ( $chord / ( 10 ^ ( 1 + 1 + 5 ) ) ) ] [ ( ( ( ( ( 0 ) + 12/16 + $chord / 2^7 ) + 0 ) + (1/2^8) ) + 0 ) ] [ ( ( ( ( ( (1/$measure) ) * 1 / $ornaments ) * 1 ) * 1 ) * 1 ) ] [ ( ( ( ( ( 64 ) + 0 + 64 ) + 16 ) + 4 ) + 9 ) ] [ ( ( ( ( ( 0 ) + 1 ) + 0 ) + 0 ) + 0 ) ] [ ( ( ( 288 ) + 0 ) + 0 ) ] [ ( ( ( 14 ) + 0 ) + 0 ) ] [ ( ( ( 15 ) + 0 ) + 0 ) ] [ ( ( ( 8 ) + 0 ) + 0 ) ] [ ( ( ( 100 ) + 0 ) + 0 ) ] [ ( ( ( 13 ) + 0 ) + 0 ) ]

}

}

i "loopback" [ 1 + ( 0 ) ] 1

</CsScore>

</CsoundSynthesizer>