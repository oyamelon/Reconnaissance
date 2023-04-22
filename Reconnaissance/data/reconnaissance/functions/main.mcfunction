execute as @a[scores={recon_rcdet=1}] if data entity @s {SelectedItem:{tag:{cstick:recon}}} run scoreboard players set @s recon_rcdet 2

    execute at @a[scores={recon_rcdet=2}] run summon minecraft:bat ~ ~ ~ {Invulnerable:true,NoAI:true,Silent:true,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],Team:"recon_collision"}
    execute at @a[scores={recon_rcdet=2}] run summon minecraft:villager ~ ~ ~ {Invulnerable:true,NoAI:true,Silent:true,Team:"recon_collision"}

    execute as @a[scores={recon_rcdet=2}] run scoreboard players set @s recon_mode_spec 2

    execute at @a[scores={recon_rcdet=2}] run tp @e[limit=1,sort=nearest,type=minecraft:bat,team=recon_collision,tag=!recon_notp] ~ ~ ~ ~ ~
    execute at @a[scores={recon_rcdet=2}] run tag @e[limit=1,sort=nearest,type=minecraft:bat,team=recon_collision,tag=!recon_notp] add recon_notp

    execute at @a[scores={recon_rcdet=2}] run tp @e[limit=1,sort=nearest,type=minecraft:villager,team=recon_collision] ~ ~ ~ ~ ~

    execute as @a[scores={recon_rcdet=2}] run gamemode spectator @s

    execute as @a[scores={recon_rcdet=2}] run schedule function reconnaissance:count 1t replace

scoreboard players reset @a recon_rcdet