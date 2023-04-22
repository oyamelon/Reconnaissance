scoreboard players add @a[scores={recon_mode_spec=2}] recon_count_p 1
scoreboard players add @e[type=minecraft:bat,team=recon_collision] recon_count_b 1

execute as @a if score @s recon_count_p = @s recon_timelimit run schedule function reconnaissance:return 1t replace
execute as @a if score @s recon_count_p matches 1.. if score @s recon_count_p < @s recon_timelimit run schedule function reconnaissance:count 1t replace