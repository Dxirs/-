player = {}
player.x = 2280 --2280
player.y = 550
player.body = love.physics.newBody(myWorld, player.x,player.y, "dynamic", 200 ) -- может двигаться
player.shape = love.physics.newRectangleShape(32, 92)
player.fixture = love.physics.newFixture(player.body, player.shape)
player.speed = 200 --- [[5]] горизонтальная скорость игрока
player.angle = 0
player.grounded = false ---[[6]] ложь если человечек в прыжке, истина если стоит на платфоме
player.dead = false
---[[7]] направление движения для смены спрайта 1 - вправо, -1 - влево
player.sprite = sprites.playeranim1s  ---[[7]]
player.body:setFixedRotation(true)  ---[[8]]
player.dialog = false
player.grid = anim8.newGrid(60,98,120,98)
player.animation = anim8.newAnimation(player.grid('1-2',1),0.3)
function playerUpdate(dt)
if player.dead == true then
player.sprite = sprites.dead
lei = 2
end
if player.body:getY() < 584 then
player.body:setType("dynamic")
player.grounded = false
end
if player.body:getY() >= 584 then
player.body:setType("static")
player.grounded = true
end
if player.body:getY() >= 900 then
player.dead = true
end
if player.dead == false then
if dvig == 1 then
if love.keyboard.isDown("down") then
player.sprite = sprites.playeran
player.body:applyLinearImpulse(0, 40)
else
player.sprite = sprites.playeranim1s
if love.keyboard.isDown("left") then
player.body:setX(player.body:getX() - player.speed*dt)
---[[7]] повернем спрайт влево
player.sprite = sprites.player1animm
tm = 2
luk = 1
else
player.sprite = sprites.playeranim1s
if love.keyboard.isDown("right") then
player.body:setX(player.body:getX() + player.speed*dt)
player.sprite = sprites.playerani
tm = 3
luk = 2
else
player.sprite = sprites.playeranim1s
end
function player_Update(dt)
if player.dead == false then
if love.keyboard.isDown("k") and tm == 3 then
player.sprite = sprites.pravr
end
if love.keyboard.isDown("k") and tm == 2 then
player.sprite = sprites.levr
end
if love.keyboard.isDown("l") and luk == 1 and arb == 2 then
player.sprite = sprites.luk
end
if love.keyboard.isDown("l") and luk == 2 and arb == 2 then
player.sprite = sprites.luk1
end
end
end
end
end
end
end
end
