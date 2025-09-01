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

#include "nota/ostoora-shatoora-kora-soora.sco"

#define clock #8#

$at( $clock )

#include "nota/shikabala-hala.sco"

#define clock #10#

$at( $clock )

#include "nota/shikabala-hala.sco"

#define clock #12#

$at( $clock )

#include "nota/shaghala-udya-lhala-lhala-shikabala.sco"

#define clock #22#

$at( $clock )

#include "nota/shikabala-hala.sco"

#define clock #24#

$at( $clock )

#include "nota/shikabala-hala.sco"

#define clock #26#

$at( $clock )

#include "nota/ostoora-shatoora-kora-soora.sco"

#define clock #30#

$at( $clock )

#include "nota/ostoora-shatoora-kora-finale.sco"

#define clock #34#

$at( $clock )

i $_loopback.0 0 1
