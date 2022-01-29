loot spawn ~ ~ ~ loot paveral:wrench
function paveral:forming_process
kill @e[type=item,nbt={PickupDelay: 32767s},distance=..3,sort=nearest,limit=1]
kill @s
