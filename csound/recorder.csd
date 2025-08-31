<CsoundSynthesizer>

<CsOptions>

--realtime

-i adc
-o dac

</CsOptions>

<CsInstruments>

sr = 48000
ksmps = 32
nchnls = 2
0dbfs = 1

instr recorder

SFile strget p4

aInput inch 2

fout SFile, -1, aInput

endin

instr drone

aClip random

kSkew poscil 1, 1/iMeasure

aSkew random -kSkew, kSkew

aNote squinewave aFrequency, aClip, aSkew

outch 1, aNote

endin

</CsInstruments>

<CsScore>

</CsScore>

</CsoundSynthesizer>
