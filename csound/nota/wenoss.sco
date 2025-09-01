#include "pick/dom.sco"

{ 2 channel

i $dom.$channel 0 1 0 $octave $distance $channel $ornaments

i . [2/4] .

} 

#include "pick/tak.sco"

{ 2 channel

i $tak.$channel [3/16] [1/16] 6 $octave $distance $channel $ornaments

i . [6/16] .

i . [10/16] .

i . [12/16] .

}

/*
~ sik .

yallah 1/16

~ sak .

yallah 2/16

~ tak .

yallah 3/16

~ sik .

yallah 4/16

~ sak .

yallah 5/16

~ tak .

yallah 6/16

~ sik .

yallah 7/16

#include "pick/dom.sco"

yallah 8/16

~ sik .

yallah 9/16

~ tak .

yallah 10/16

~ sak .

yallah 11/16

~ tak .

yallah 12/16

~ sik .

yallah 13/16

yallah 14/16

yallah 15/16

~ sagat .

yallah 10/16

yallah 12/16

yallah 14/16
*/
