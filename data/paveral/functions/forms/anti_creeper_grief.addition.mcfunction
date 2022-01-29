loot spawn ~ ~ ~ loot paveral:anti_creeper_grief
function paveral:forming_process
kill @e[type=item,nbt={PickupDelay: 32767s},distance=..3,sort=nearest,limit=2]
kill @s
