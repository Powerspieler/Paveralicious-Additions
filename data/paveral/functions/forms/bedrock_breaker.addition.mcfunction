loot spawn ~ ~ ~ loot paveral:bedrock_breaker
function paveral:forming_process
kill @e[type=item,nbt={PickupDelay: 32767s},distance=..3,sort=nearest,limit=5]
kill @s
