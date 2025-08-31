import { readdir as list, writeFile as write } from 'node:fs/promises';

const orc = [];
const sco = [];

await list ( '.' ) .then (

directory => directory
.filter ( file => file .endsWith ( '.instr' ) )
.map ( file => file .slice ( 0, -( '.instr' .length ) ) )
.map ( ( instrument, index ) => {

const number = index + 1;

orc .push ( [

`#define ${ instrument } #${ number }#`,
`#include "kit/${ instrument }.instr"`

] .join ( '\n' ) );

sco .push ( `#define ${ instrument } #${ number }.#` );

} )

);

await Promise .all ( [

write ( 'index.orc', orc .join ( '\n\n' ), 'utf8' ),
write ( 'index.sco', sco .join ( '\n' ), 'utf8' )

] );
