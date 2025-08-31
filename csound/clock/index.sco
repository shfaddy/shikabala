#include "clock/tempo.sco"
#include "clock/measure.sco"

t 0 $tempo

#define at(bar) #b [ $measure * ($bar) ]#

v $measure

i $_clock.0 0 1 $tempo
