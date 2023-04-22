execute as @a if score @s recon_count_p = @s recon_timelimit run tp @s @e[limit=1,sort=arbitrary,type=minecraft:bat,team=recon_collision]

execute as @a if score @s recon_count_p = @s recon_timelimit at @s run effect give @e[limit=1,sort=nearest,type=minecraft:villager,team=recon_collision] minecraft:invisibility 100 0 true

execute as @a if score @s recon_count_p = @s recon_timelimit run gamemode survival @s

execute as @a if score @s recon_count_p = @s recon_timelimit at @s run kill @e[limit=1,sort=nearest,type=minecraft:villager,team=recon_collision]
execute as @a if score @s recon_count_p = @s recon_timelimit at @s run kill @e[limit=1,sort=nearest,type=minecraft:bat,team=recon_collision]

execute as @a if score @s recon_count_p = @s recon_timelimit run scoreboard players set @s recon_mode_spec 1

execute as @a if score @s recon_count_p = @s recon_timelimit run scoreboard players reset @s recon_count_p