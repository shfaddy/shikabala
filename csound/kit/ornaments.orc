if p8 > 0 then

seed 0

iRandom random 0, p8

iOrnaments init 2 ^ int ( iRandom )

p3 /= iOrnaments

iOrnament init 1

while iOrnament < iOrnaments do

iDetune random -1, 1

schedule p1, iOrnament * p3, p3, p4 + int ( iDetune ), p5, p6, p7, -1

iOrnament += 1

od

endif
