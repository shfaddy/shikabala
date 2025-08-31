#include "kit/index.sco"
#include "clock/index.sco"
#include "key.sco"
#include "mixer.sco"

$key(6)

#define clock #0#

$at( $clock )

#include "nota/ostoora-shatoora-kora-soora.sco"

#define clock #4#

$at( $clock )

/*

#include "nota/ostoora-shatoora-kora-soora.sco"

$at(8)

#include "nota/shikabala-hala.sco"

$at(10)

#include "nota/shikabala-hala.sco"

$at(12)

*/

i $_loopback.0 0 1
