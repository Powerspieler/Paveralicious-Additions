# Copy This: {Items:[{Slot:0b, id:"", Count:1b},{Slot:1b, id:"", Count:1b},{Slot:2b, id:"", Count:1b},{Slot:3b, id:"", Count:1b},{Slot:4b, id:"", Count:1b},{Slot:5b, id:"", Count:1b},{Slot:6b, id:"", Count:1b},{Slot:7b, id:"", Count:1b},{Slot:8b, id:"", Count:1b}]}

# Wrench
execute if block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:1b, id:"minecraft:iron_ingot", Count:1b},{Slot:4b, id:"minecraft:iron_ingot", Count:1b},{Slot:5b, id:"minecraft:iron_ingot", Count:1b},{Slot:6b, id:"minecraft:iron_ingot", Count:1b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:0b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:2b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:3b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:7b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:8b}]} run function paveral:forge/recipes/wrench

execute if block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:1b, id:"minecraft:iron_ingot", Count:1b},{Slot:3b, id:"minecraft:iron_ingot", Count:1b},{Slot:4b, id:"minecraft:iron_ingot", Count:1b},{Slot:8b, id:"minecraft:iron_ingot", Count:1b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:0b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:2b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:5b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:6b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:7b}]} run function paveral:forge/recipes/wrench


#Chunkloader
execute if block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:1b, id:"minecraft:nether_star", Count:1b},{Slot:3b, id:"minecraft:nether_star", Count:1b},{Slot:4b, id:"minecraft:lodestone", Count:1b},{Slot:5b, id:"minecraft:nether_star", Count:1b},{Slot:6b, id:"minecraft:obsidian", Count:1b},{Slot:7b, id:"minecraft:enchanting_table", Count:1b},{Slot:8b, id:"minecraft:obsidian", Count:1b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:0b}]} unless block ~ ~1 ~ minecraft:dispenser{Items:[{Slot:2b}]} run function paveral:forge/recipes/chunkloader
