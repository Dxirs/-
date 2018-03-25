monstr = {}
monstr.x = 3200
monstr.y = 550
monstr.body2 = love.physics.newBody(myWorld2, monstr.x,monstr.y, "dynamic", 200 ) -- может двигаться
monstr.shape2 = love.physics.newRectangleShape(32, 92)
monstr.fixture2 = love.physics.newFixture(monstr.body2, monstr.shape2)
monstr.speed = 100 -- [[5]] горизонтальная скорость игрока
monstr.angle = 0
monstr.grounded = false ---[[6]] ложь если человечек в прыжке, истина если стоит на платфоме
monstr.dead = false
monstr.sprite = sprites.monstr  ---[[7]]
monstr.body2:setFixedRotation(true)  ---[[8]]
monstr.grid = anim8.newGrid(60,98,120,98)
monstr.animation = anim8.newAnimation(monstr.grid('1-2',1),0.3)


function monstrUpdate(dt)
if monstr.body2:getY() < 584 then
monstr.body2:setType("dynamic")
monstr.grounded = false
end
if monstr.body2:getY() >= 584 then
monstr.body2:setType("static")
monstr.grounded = true
end
if gameState == 2 then
if monstr.dead == true then
tu = 1
monstr.sprite = sprites.pusto
end
if player.dead == false and player_1.dead == true and monstr.dead == false then
if distanceBetween(monstr.body2:getX(),monstr.body2:getY(),player.body:getX()+330,player.body:getY()) < 300 then
monstr.sprite = sprites.player1animm
monstr.body2:setX(monstr.body2:getX() - monstr.speed*dt)
else
monstr.sprite = sprites.stop
end
if distanceBetween(monstr.body2:getX(),monstr.body2:getY(),player.body:getX()-355,player.body:getY()) < 300 then
monstr.sprite = sprites.playerani
monstr.body2:setX(monstr.body2:getX() + monstr.speed*dt)
end
end
if player.dead == true and player_1.dead == false and monstr.dead == false then
if distanceBetween(monstr.body2:getX(),monstr.body2:getY(),player_1.body1:getX()+330,player_1.body1:getY()) < 300 then
monstr.sprite = sprites.player1animm
monstr.body2:setX(monstr.body2:getX() - monstr.speed*dt)
else
monstr.sprite = sprites.stop
end
if distanceBetween(monstr.body2:getX(),monstr.body2:getY(),player_1.body1:getX()-355,player_1.body1:getY()) < 300 then
monstr.sprite = sprites.playerani
monstr.body2:setX(monstr.body2:getX() + monstr.speed*dt)
end
end
if to == 2 then
ty = 1
end
if ty == 2 then
to= 1
end
if player.dead == false and player_1.dead == false and monstr.dead == false then
if distanceBetween(monstr.body2:getX(),monstr.body2:getY(),player.body:getX()+230,player.body:getY()) < 200 and ty == 1 then
monstr.sprite = sprites.player1animm
monstr.body2:setX(monstr.body2:getX() - monstr.speed*dt)
to = 2
else
monstr.sprite = sprites.stop
to = 1
ty = 1
end
if distanceBetween(monstr.body2:getX(),monstr.body2:getY(),player.body:getX()-255,player.body:getY()) < 200 and ty == 1 then
monstr.sprite = sprites.playerani
monstr.body2:setX(monstr.body2:getX() + monstr.speed*dt)
to = 2
end
if distanceBetween(monstr.body2:getX(),monstr.body2:getY(),player_1.body1:getX()+230,player_1.body1:getY()) < 200 and to == 1 then
monstr.sprite = sprites.player1animm
monstr.body2:setX(monstr.body2:getX() - monstr.speed*dt)
ty = 2
end
if distanceBetween(monstr.body2:getX(),monstr.body2:getY(),player_1.body1:getX()-255,player_1.body1:getY()) < 200 and to == 1 then
monstr.sprite = sprites.playerani
monstr.body2:setX(monstr.body2:getX() + monstr.speed*dt)
ty = 2
end
end
if player.dead == false and monstr.dead == false then
if distanceBetween(monstr.body2:getX(),monstr.body2:getY(),player.body:getX()+10,player.body:getY()) < 30 then
monstr.sprite = sprites.levr
health = health - 1
player.body:setType("dynamic")
player.body:applyLinearImpulse(-500, -500)
elseif distanceBetween(monstr.body2:getX(),monstr.body2:getY(),player.body:getX()-30,player.body:getY()) < 30 then
monstr.sprite = sprites.pravr
health = health - 1
player.body:setType("dynamic")
player.body:applyLinearImpulse(500, -500)
end
end
if player_1.dead == false and monstr.dead == false then
if distanceBetween(monstr.body2:getX(),monstr.body2:getY(),player_1.body1:getX()+10,player_1.body1:getY()) < 30 then
monstr.sprite = sprites.levr
health2 = health2 - 1
player_1.body1:setType("dynamic")
player_1.body1:applyLinearImpulse(-500, -500)
elseif distanceBetween(monstr.body2:getX(),monstr.body2:getY(),player_1.body1:getX()-30,player_1.body1:getY()) < 30 then
monstr.sprite = sprites.pravr
health2 = health2 - 1
player_1.body1:setType("dynamic")
player_1.body1:applyLinearImpulse(500, -500)
end
end
end
end
