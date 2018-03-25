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
--плеер 1 при игре на 2-их
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
--плеер 2 при игре на 2-их
health__90()
health__80()
health__70()
health__60()
health__50()
health__40()
health__30()
health__20()
health__10()
health__0()
--моб 1
health___90()
health___80()
health___70()
health___60()
health___50()
health___40()
health___30()
health___20()
health___10()
health___0()
end
function health90()
if health == 9 then
sprites.ui_health = lg.newImage('assets/sprites/ui/ui_health_90.png')
end
end
function health80()
if health == 8 then
sprites.ui_health = lg.newImage('assets/sprites/ui/ui_health_80.png')
end
end
function health70()
if health == 7 then
sprites.ui_health = lg.newImage('assets/sprites/ui/ui_health_70.png')
end
end
function health60()
if health == 6 then
sprites.ui_health = lg.newImage('assets/sprites/ui/ui_health_60.png')
end
end
function health50()
if health == 5 then
sprites.ui_health = lg.newImage('assets/sprites/ui/ui_health_50.png')
end
end
function health40()
if health == 4 then
sprites.ui_health = lg.newImage('assets/sprites/ui/ui_health_40.png')
end
end
function health30()
if health == 3 then
sprites.ui_health = lg.newImage('assets/sprites/ui/ui_health_30.png')
end
end
function health20()
if health == 2 then
sprites.ui_health = lg.newImage('assets/sprites/ui/ui_health_20.png')
end
end
function health10()
if health == 1 then
sprites.ui_health = lg.newImage('assets/sprites/ui/ui_health_10.png')
end
end
function health0()
if health == 0 then
sprites.ui_health = lg.newImage('assets/sprites/ui/ui_health_0.png')
player.dead = true
end
end
--для первого при игре в 2-ём
function health_90()
if health == 9 then
sprites.ui_health_p1 = lg.newImage('assets/sprites/ui/ui_health_p90.png')
end
end
function health_80()
if health == 8 then
sprites.ui_health_p1 = lg.newImage('assets/sprites/ui/ui_health_p80.png')
end
end
function health_70()
if health == 7 then
sprites.ui_health_p1 = lg.newImage('assets/sprites/ui/ui_health_p70.png')
end
end
function health_60()
if health == 6 then
sprites.ui_health_p1 = lg.newImage('assets/sprites/ui/ui_health_p60.png')
end
end
function health_50()
if health == 5 then
sprites.ui_health_p1 = lg.newImage('assets/sprites/ui/ui_health_p50.png')
end
end
function health_40()
if health == 4 then
sprites.ui_health_p1 = lg.newImage('assets/sprites/ui/ui_health_p40.png')
end
end
function health_30()
if health == 3 then
sprites.ui_health_p1 = lg.newImage('assets/sprites/ui/ui_health_p30.png')
end
end
function health_20()
if health == 2 then
sprites.ui_health_p1 = lg.newImage('assets/sprites/ui/ui_health_p20.png')
end
end
function health_10()
if health == 1 then
sprites.ui_health_p1 = lg.newImage('assets/sprites/ui/ui_health_p10.png')
end
end
function health_0()
if health == 0 then
sprites.ui_health_p1 = lg.newImage('assets/sprites/ui/ui_health_p0.png')
player.dead = true
end
end
  --для второго при игре в 2-ём
function health__90()
if health2 == 9 then
sprites.ui_health_p2 = lg.newImage('assets/sprites/ui/ui_healtz_90.png')
end
end
function health__80()
if health2 == 8 then
sprites.ui_health_p2 = lg.newImage('assets/sprites/ui/ui_healtz_80.png')
end
end
function health__70()
if health2 == 7 then
sprites.ui_health_p2 = lg.newImage('assets/sprites/ui/ui_healtz_70.png')
end
end
function health__60()
if health2 == 6 then
sprites.ui_health_p2 = lg.newImage('assets/sprites/ui/ui_healtz_60.png')
end
end
function health__50()
if health2 == 5 then
sprites.ui_health_p2 = lg.newImage('assets/sprites/ui/ui_healtz_50.png')
end
end
function health__40()
if health2 == 4 then
sprites.ui_health_p2 = lg.newImage('assets/sprites/ui/ui_healtz_40.png')
end
end
function health__30()
if health2 == 3 then
sprites.ui_health_p2 = lg.newImage('assets/sprites/ui/ui_healtz_30.png')
end
end
function health__20()
if health2 == 2 then
sprites.ui_health_p2 = lg.newImage('assets/sprites/ui/ui_healtz_20.png')
end
end
function health__10()
if health2 == 1 then
sprites.ui_health_p2 = lg.newImage('assets/sprites/ui/ui_healtz_10.png')
end
end
function health__0()
if health2 == 0 then
sprites.ui_health_p2 = lg.newImage('assets/sprites/ui/ui_healtz_0.png')
player_1.dead = true
end
end
--моб 1
function health___90()
if health3 == 9 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_90.png')
end
end
function health___80()
if health3 == 8 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_80.png')
end
end
function health___70()
if health3 == 7 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_70.png')
end
end
function health___60()
if health3 == 6 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_60.png')
end
end
function health___50()
if health3 == 5 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_50.png')
end
end
function health___40()
if health3 == 4 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_40.png')
end
end
function health___30()
if health3 == 3 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_30.png')
end
end
function health___20()
if health3 == 2 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_20.png')
end
end
function health___10()
if health3 == 1 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_10.png')
end
end
function health___0()
if health3 == 0 then
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health_0.png')
monstr.dead = true
end
end
