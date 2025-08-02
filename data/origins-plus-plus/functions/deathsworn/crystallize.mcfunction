data modify entity @s ArmorDropChances set value [1.0F,1.0F,1.0F,1.0F]
data modify entity @s HandDropChances set value [1.0F,1.0F]
summon minecraft:item ~ ~ ~ {Tags:["Petrified_Heart"],Glowing:1b,PickupDelay:1,Item:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{CustomModelData:1,lnc:1,display:{Name:'{"translate":"origins-plus-plus.deathsworn.petrified_heart","color":"#F01E67","bold":false,"italic":false}'}}}}

execute if entity @s[tag=Deathsworn_Minion] run playsound origins-plus-plus:deathsworn.rest hostile @a[sort=nearest,distance=..6] ~ ~ ~

execute if entity @s[type=#origins-plus-plus:test_petrified_heart_mobs] run function origins-plus-plus:deathsworn/test/crystallize
execute if entity @s[type=#origins-plus-plus:adventurez_petrified_heart_mobs] run function origins-plus-plus:deathsworn/adventurez/crystallize
execute if entity @s[type=#origins-plus-plus:aether_petrified_heart_mobs] run function origins-plus-plus:deathsworn/aether/crystallize
execute if entity @s[type=#origins-plus-plus:creeperoverhaul_petrified_heart_mobs] run function origins-plus-plus:deathsworn/creeperoverhaul/crystallize
execute if entity @s[type=#origins-plus-plus:darkwaters_petrified_heart_mobs] run function origins-plus-plus:deathsworn/darkwaters/crystallize
execute if entity @s[type=#origins-plus-plus:endermanoverhaul_petrified_heart_mobs] run function origins-plus-plus:deathsworn/endermanoverhaul/crystallize
execute if entity @s[type=#origins-plus-plus:enderzoology_petrified_heart_mobs] run function origins-plus-plus:deathsworn/enderzoology/crystallize
execute if entity @s[type=#origins-plus-plus:frycmobvariants_petrified_heart_mobs] run function origins-plus-plus:deathsworn/frycmobvariants/crystallize
execute if entity @s[type=#origins-plus-plus:minecraft_petrified_heart_mobs] run function origins-plus-plus:deathsworn/minecraft/crystallize
execute if entity @s[type=#origins-plus-plus:mutantmonsters_petrified_heart_mobs] run function origins-plus-plus:deathsworn/mutantmonsters/crystallize
execute if entity @s[type=#origins-plus-plus:mutantszombies_petrified_heart_mobs] run function origins-plus-plus:deathsworn/mutantszombies/crystallize
execute if entity @s[type=#origins-plus-plus:soulsweapons_petrified_heart_mobs] run function origins-plus-plus:deathsworn/soulsweapons/crystallize
execute if entity @s[type=#origins-plus-plus:species_petrified_heart_mobs] run function origins-plus-plus:deathsworn/species/crystallize
execute if entity @s[type=#origins-plus-plus:takesapillage_petrified_heart_mobs] run function origins-plus-plus:deathsworn/takesapillage/crystallize
execute if entity @s[type=#origins-plus-plus:variantsandventures_petrified_heart_mobs] run function origins-plus-plus:deathsworn/variantsandventures/crystallize
execute if entity @s[type=#origins-plus-plus:wandering_orc_petrified_heart_mobs] run function origins-plus-plus:deathsworn/wandering_orc/crystallize
execute if entity @s[type=#origins-plus-plus:cataclysm_petrified_heart_mobs] run function origins-plus-plus:deathsworn/cataclysm/crystallize
execute if entity @s[type=#origins-plus-plus:friendsandfoes_petrified_heart_mobs] run function origins-plus-plus:deathsworn/friendsandfoes/crystallize
execute if entity @s[type=#origins-plus-plus:rottencreatures_petrified_heart_mobs] run function origins-plus-plus:deathsworn/rottencreatures/crystallize
execute as @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] at @s unless data entity @s Item.tag.mob run data modify entity @s Item.tag.mob set value "Zombie"

execute store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.KBres float 1 run attribute @s minecraft:generic.knockback_resistance get
execute if entity @s[tag=Deathsworn_Minion] store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.KBres float 0.8 run scoreboard players get @s Minion_KBres
execute store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Health float 1 run attribute @s minecraft:generic.max_health get
execute if entity @s[tag=Deathsworn_Minion] store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Health float 0.8 run scoreboard players get @s Minion_Health
execute store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Armor float 1 run attribute @s minecraft:generic.armor get
execute if entity @s[tag=Deathsworn_Minion] store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Armor float 0.8 run scoreboard players get @s Minion_Armor
execute store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.AD float 1 run attribute @s minecraft:generic.attack_damage get
execute if entity @s[tag=Deathsworn_Minion] store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.AD float 0.8 run scoreboard players get @s Minion_Attack_Damage
execute store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Size float 1 run data get entity @s Size 1
data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.ArmorSet set from entity @s ArmorItems
data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.HandItems set from entity @s HandItems