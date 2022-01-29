loot spawn ~ ~ ~ loot paveral:jeb_wool
function paveral:forming_process
kill @e[type=item,nbt={PickupDelay: 32767s},distance=..3,sort=nearest,limit=15]
kill @s
