#include "pick/dom.sco"

{ 2 channel

i $dom.$channel 0 1 0 $octave $distance $channel $ornaments

i . [2/4] .

} 

#include "pick/tak.sco"

{ 2 channel

i $tak.$channel [2/16] [1/16] 6 $octave $distance $channel $ornaments

i . [6/16] .

i . [12/16] .

}
