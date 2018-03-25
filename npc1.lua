npc1 = {}
npc1.x = 3100
npc1.y = 530
npc1.speed = 50
npc1.sprite = sprites.npcanimw
npc1.grid = anim8.newGrid(60,100,180,300)
npc1.animation = anim8.newAnimation(npc1.grid('1-3',1, '1-3',2, '1-2',3), 0.3)
npc1.r = 1
npcstate1 = 1
function animmove1Update(dt)
if npc1.x >= 3450 then
npcstate1 = 2
elseif npc1.x <= 3100 then
npcstate1 = 1
end
if npcstate1 == 2 then
npc1.x = npc1.x - npc1.speed * dt
npc1.sprite = sprites.npcanimk
else
if npcstate1 == 1 then
npc1.x = npc1.x + npc1.speed * dt
npc1.sprite = sprites.npcanimj
end
end

if distanceBetween(npc1.x+38,npc1.y,player.body:getX(),player.body:getY()) < 90 then
npc1.speed= 0
npc1.sprite = sprites.npcanimh
else
if distanceBetween(npc1.x+38,npc1.y,player.body:getX(),player.body:getY()) > 90 then
npc1.speed=80
if player_1.dead == false then
if distanceBetween(npc1.x+38,npc1.y,player_1.body1:getX(),player_1.body1:getY()) < 90 then
npc1.speed= 0
npc1.sprite = sprites.npcanimh
else
if distanceBetween(npc1.x+38,npc1.y,player_1.body1:getX(),player_1.body1:getY()) > 90 then
npc1.speed=80
end
end
end
end
end
end
