local lg = love.graphics
function healthUpdate()
health90()
health80()
health70()
health60()
health50()
health40()
health30()
health20()
health10()
health0()
-- 2-ой игрок
health_90()
health_80()
health_70()
health_60()
health_50()
health_40()
health_30()
health_20()
health_10()
health_0()
-- Для моба (ПЕРЕДЕЛАЙ!!!!!)
health_mob_90()
health_mob_80()
health_mob_70()
health_mob_60()
health_mob_50()
health_mob_40()
health_mob_30()
health_mob_20()
health_mob_10()
health_mob_0()
end
-- 1-ый игрок
function health90()
if health == 9 then
sprites.ui_health = lg.newImage('assets/sprites/ui/new/ui_health_90.png')
end
end
function health80()
if health == 8 then
sprites.ui_health = lg.newImage('assets/sprites/ui/new/ui_health_80.png')
end
end
function health70()
if health == 7 then
sprites.ui_health = lg.newImage('assets/sprites/ui/new/ui_health_70.png')
end
end
function health60()
if health == 6 then
sprites.ui_health = lg.newImage('assets/sprites/ui/new/ui_health_60.png')
end
end
function health50()
if health == 5 then
sprites.ui_health = lg.newImage('assets/sprites/ui/new/ui_health_50.png')
end
end
function health40()
if health == 4 then
sprites.ui_health = lg.newImage('assets/sprites/ui/new/ui_health_40.png')
end
end
function health30()
if health == 3 then
sprites.ui_health = lg.newImage('assets/sprites/ui/new/ui_health_30.png')
end
end
function health20()
if health == 2 then
sprites.ui_health = lg.newImage('assets/sprites/ui/new/ui_health_20.png')
end
end
function health10()
if health == 1 then
sprites.ui_health = lg.newImage('assets/sprites/ui/new/ui_health_10.png')
end
end
function health0()
if health == 0 then
sprites.ui_health = lg.newImage('assets/sprites/ui/new/ui_health.png')
player.dead = true
end
end
-- 2-ой игрок
function health_90()
if health2 == 9 then
sprites.ui_health_2 = lg.newImage('assets/sprites/ui/new/player_2/ui_health_90.png')
end
end
function health_80()
if health2 == 8 then
sprites.ui_health_2 = lg.newImage('assets/sprites/ui/new/player_2/ui_health_80.png')
end
end
function health_70()
if health2 == 7 then
sprites.ui_health_2 = lg.newImage('assets/sprites/ui/new/player_2/ui_health_70.png')
end
end
function health_60()
if health2 == 6 then
sprites.ui_health_2 = lg.newImage('assets/sprites/ui/new/player_2/ui_health_60.png')
end
end
function health_50()
if health2 == 5 then
sprites.ui_health_2 = lg.newImage('assets/sprites/ui/new/player_2/ui_health_50.png')
end
end
function health_40()
if health2 == 4 then
sprites.ui_health_2 = lg.newImage('assets/sprites/ui/new/player_2/ui_health_40.png')
end
end
function health_30()
if health2 == 3 then
sprites.ui_health_2 = lg.newImage('assets/sprites/ui/new/player_2/ui_health_30.png')
end
end
function health_20()
if health2 == 2 then
sprites.ui_health_2 = lg.newImage('assets/sprites/ui/new/player_2/ui_health_20.png')
end
end
function health_10()
if health2 == 1 then
sprites.ui_health_2 = lg.newImage('assets/sprites/ui/new/player_2/ui_health_10.png')
end
end
function health_0()
if health2 == 0 then
sprites.ui_health_2 = lg.newImage('assets/sprites/ui/new/player_2/ui_health.png')
player_1.dead = true
end
end
--моб 1
function health_mob_90()
if health_mob == 9 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_90.png')
end
end
function health_mob_80()
if health_mob == 8 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_80.png')
end
end
function health_mob_70()
if health_mob == 7 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_70.png')
end
end
function health_mob_60()
if health_mob == 6 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_60.png')
end
end
function health_mob_50()
if health_mob == 5 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_50.png')
end
end
function health_mob_40()
if health_mob == 4 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_40.png')
end
end
function health_mob_30()
if health_mob == 3 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_30.png')
end
end
function health_mob_20()
if health_mob == 2 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_20.png')
end
end
function health_mob_10()
if health_mob == 1 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_10.png')
end
end
function health_mob_0()
if health_mob == 0 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_0.png')
monstr.dead = true
end
end
