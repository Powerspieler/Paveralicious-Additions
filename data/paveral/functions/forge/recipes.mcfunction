# Copy This: {Items:[{Slot:0b, id:""},{Slot:1b, id:""},{Slot:2b, id:""},{Slot:3b, id:""},{Slot:4b, id:""},{Slot:5b, id:""},{Slot:6b, id:""},{Slot:7b, id:""},{Slot:8b, id:""}]}

# Wrench
execute if block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:1b, id:"minecraft:iron_ingot", Count:1b},{Slot:4b, id:"minecraft:iron_ingot", Count:1b},{Slot:5b, id:"minecraft:iron_ingot", Count:1b},{Slot:6b, id:"minecraft:iron_ingot", Count:1b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:0b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:2b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:3b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:7b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:8b}]} run function paveral:forge/recipes/wrench

execute if block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:1b, id:"minecraft:iron_ingot", Count:1b},{Slot:3b, id:"minecraft:iron_ingot", Count:1b},{Slot:4b, id:"minecraft:iron_ingot", Count:1b},{Slot:8b, id:"minecraft:iron_ingot", Count:1b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:0b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:2b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:5b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:6b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:7b}]} run function paveral:forge/recipes/wrench


#Chunkloader
execute if block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:1b, id:"minecraft:nether_star"},{Slot:3b, id:"minecraft:nether_star"},{Slot:4b, id:"minecraft:lodestone"},{Slot:5b, id:"minecraft:nether_star"},{Slot:6b, id:"minecraft:obsidian"},{Slot:7b, id:"minecraft:enchanting_table"},{Slot:8b, id:"minecraft:obsidian"}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:0b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:2b}]} run function paveral:forge/recipes/chunkloader
