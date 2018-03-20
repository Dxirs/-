require('ui')
require("resources")

local la = love.audio
local lg = love.graphics
local lp = love.physics
local lk = love.keyboard

-- TURN OFF BLUR EFFECT
lg.setDefaultFilter('nearest', 'nearest')


-- love.load()
function loadGame()
--игроки
health = 10
health2 = 10
--мобы
health3 = 10

loadImages()
loadSounds()
loadFonts()
loadVariables()
loadButtons()

-- Add physics and setup gravitation
myWorld  = lp.newWorld(0, 800, false)
myWorld1 = lp.newWorld(0, 800, false)
myWorld2 = lp.newWorld(0, 800, false)

-- введем обработку коллизий для того что бы определить
-- соприкасается ли человечек с платформой
myWorld:setCallbacks(beginContact, endContact, preSolve, postSolve)
myWorld1:setCallbacks(beginContact1, endContact1, preSolve1, postSolve1)
myWorld2:setCallbacks(beginContact2, endContact2, preSolve2, postSolve2)
-- Setup library
anim8 = require('assets/libraries/anim8')
require('player')
require('player_1')
require('npc')
require('npc1')
require('npc_bird')
require('coin')
require('menu')
require('health')
require('bullets')
require('monstr')

utf8=require("utf8")
Camera = require('assets/libraries/camera')
cam = Camera()
sti = require('assets/sti')
-- TEST MAP FOR DEVELOPMENT!
--gameMap = sti("maps/1_GameMap.lua")
-- MAIN MAP
gameMap = sti("assets/maps/GameMap.lua")

-- Coins
  for i,obj in ipairs(gameMap.layers["coins"].objects) do
   spawnCoin(obj.x, obj.y, obj.width, obj.height)

 end
end
--- добавим таблицу для пуль

-- love.update(dt)
function updateGame(dt)
   healthUpdate()

   if cami == 1 then
       cam:lookAt(player.body:getX(), lg.getHeight()/2)
   end
   if cami == 2 then
        cam:lookAt(player_1.body1:getX(), lg.getHeight()/2)
      end
  if gameState == 2 and cami == 1 then
    cami = 1
  end
  if love.keyboard.isDown("t") and gameState == 2 and cami == 1 and player.dead == false and player_1.dead == false then
    cami = 2
  end
  if love.keyboard.isDown("y") and gameState == 2 and cami == 2 and player.dead == false and player_1.dead == false then
    cami = 1
  end
  if gameState == 2 and cami == 2 then
    cami = 2
  end
  if gameState == 1 then
    cam:lookAt(lg.getWidth()/2+2, lg.getHeight()/2)
  end
  if player.dead == true and player_1.dead == false then
    cam:lookAt(player_1.body1:getX(), lg.getHeight()/2)
  end
  if player_1.dead == true and player.dead == true then
    gameState = 3
    main_sound:stop()
    game_over_music:play()
    cam:lookAt(lg.getWidth()/2+68610, lg.getHeight()/2)
  end
  if player.dead == false and player_1.dead == false then

  end
  for i,b in ipairs(bullets_1) do
     b.x = b.x - b.speed * dt
   end

  for i,b in ipairs(bullets) do
     b.x = b.x + b.speed * dt
end
for i,b in ipairs(bullets2) do
   b.x = b.x - b.speed * dt
 end

for i,b in ipairs(bullets_2) do
   b.x = b.x + b.speed * dt
end



    updatesCore(dt)

  if gameState == 2 then
   timer = timer + dt
  end
  if timer < 0 then
    timer = 0
    gameState = 1
  end
  if timer1 < 0 then
   timer1 = timer1 + dt
  end
  if timer2 < 0 then
   timer2 = timer2 + dt
  end
  if timer3 < 0 then
   timer3 = timer3 + dt
  end
  if timer4 < 0 then
   timer4 = timer4 + dt
  end
  if timer5 < 0 then
    timer5 = timer5 + dt
  end
  if timer6 < 0 then
    timer6 = timer6 + dt
  end
  if timer7 < 0 then
    timer7 = timer7 + dt
  end
  if timer8 < 0 then
    timer8 = timer8 + dt
  end
  if timer9 < 0 then
    timer9 = timer9 + dt
  end
  if timer10 < 0 then
    timer10 = timer10 + dt
  end
  if timer10 < 0 then
    timer10 = timer10 + dt
  end
  if timer11 < 0 then
    timer11 = timer11 + dt
  end
  if timer11 < 0 then
    timer11 = timer11 + dt
  end
if tt > 4 then
  tt = tt - 1
end
if tt <= 0 then
  tt = tt + 1
end
  -- таблица удаления пули
    for i = #bullets, 1, -1 do
       local b = bullets[i]
       if b.x > player.body:getX()+550 or b.y < 0 then
         table.remove(bullets, i)
       else if b.dead == true then
         table.remove(bullets, i)
            end
       end
    end

    for i = #bullets_1, 1, -1 do
       local b = bullets_1[i]
       if b.x < player.body:getX()-670 or b.y < 0 then
         table.remove(bullets_1, i)
       else if b.dead == true then
         table.remove(bullets_1, i)
       end
    end
  end
  --для второго игрока
  for i = #bullets2, 1, -1 do
     local b = bullets2[i]
        if b.x < player_1.body1:getX()-670 or b.y < 0 then
       table.remove(bullets2, i)
     else if b.dead == true then
       table.remove(bullets2, i)
          end
     end
  end

  for i = #bullets_2, 1, -1 do
     local b = bullets_2[i]
     if b.x > player_1.body1:getX()+550 or b.y < 0 then
       table.remove(bullets_2, i)
     else if b.dead == true then
       table.remove(bullets_2, i)
     end
end
end


    for i,c in ipairs(coins) do
        c.animation:update(dt)
      end
  end


-- love.draw()
function drawGame()
  -- SET TITLE
  love.window.setTitle("Light vs Shadow (FPS:" .. love.timer.getFPS() .. ")")



  if gameState == 2 then
  if distanceBetween(0,player.body:getY(),player.body:getX(),player.body:getY()) < 2100 then
  cam:lookAt(lg.getWidth()/2+1416, lg.getHeight()/2)
  end
  end
  if gameState == 2 then
  if player.dead == true and player_1.dead == false then
  if distanceBetween(0,player_1.body1:getY(),player_1.body1:getX(),player_1.body1:getY()) < 2100 then
  cam:lookAt(lg.getWidth()/2+1416, lg.getHeight()/2)
  end
  end
  end
  if gameState == 2 then
  if player.dead == false and player_1.dead == false and cami == 2 then
  if distanceBetween(0,player_1.body1:getY(),player_1.body1:getX(),player_1.body1:getY()) < 2100 then
  cam:lookAt(lg.getWidth()/2+1416, lg.getHeight()/2)
  end
  end
  end
--  KD JUMP
  if timer1 < 0 then
    player.grounded = false
    end
    if timer2 < 0 then
      player_1.grounded1 = false
      end
      if player.grounded == true then
      player.body:applyLinearImpulse(0, 100)
    end
    if player_1.grounded1 == true then
    player_1.body1:applyLinearImpulse(0, 100)
  end
  if monstr.grounded == true then
    monstr.body2:applyLinearImpulse(0, 100)
  end
      --взаимодействие с кнопкой старта на 1-го плеера
if ded == 2 then
  player_1.body1:setX(99999)
end
-- TELEPORTATION PLAYERS FOR 4 STATES
if lk.isDown("e") then
  if player_1.dead == false then
  if distanceBetween(4795,515,player.body:getX(),player.body:getY()) < 30 and
  distanceBetween(player.body:getX(),player.body:getY(),player_1.body1:getX(),player_1.body1:getY()) < 80 then
  player.body:setX(8220)
  player.body:setY(515)
  player_1.body1:setX(8090)
  player_1.body1:setY(515)
end
end
end
if lk.isDown("e") then
  if player_1.dead == false then
  if distanceBetween(4795,515,player_1.body1:getX(),player_1.body1:getY()) < 30 and
  distanceBetween(player_1.body1:getX(),player_1.body1:getY(),player.body:getX(),player.body:getY()) < 80 then
  player.body:setX(8220)
  player.body:setY(515)
  player_1.body1:setX(8090)
  player_1.body1:setY(515)
end
end
end
if player_1.dead == true then
if lk.isDown("e") then
  if distanceBetween(4795,515,player.body:getX(),player.body:getY()) < 30 then
  player.body:setX(8220)
  player.body:setY(515)
end
end
end
if player.dead == true then
if lk.isDown("e") then
  if distanceBetween(4795,515,player_1.body1:getX(),player_1.body1:getY()) < 30 then
  player_1.body1:setX(8090)
  player_1.body1:setY(515)
end
end
end


if distanceBetween(3500,player.body:getY(),player.body:getX(),player.body:getY()) < 20 and player.dead == false and bird == 1 then
  npc_bird.x = 4300
  npc_bird.y = 0
  bird = 2
elseif distanceBetween(3500,player_1.body1:getY(),player_1.body1:getX(),player_1.body1:getY()) < 20 and player_1.dead == false and bird == 1 then
  npc_bird.x = 4300
  npc_bird.y = 0
  bird = 3
  end
if distanceBetween(npc_bird.x,npc_bird.y,player.body:getX(),player.body:getY()) < 900 and chirik == 1 then
  chirik_sound:play()
elseif distanceBetween(npc_bird.x,npc_bird.y,player.body:getX(),player.body:getY()) > 900 and chirik == 1 then
  chirik_sound:stop()
end
  if distanceBetween(npc_bird.x,npc_bird.y,player_1.body1:getX(),player_1.body1:getY()) < 900 and chirik2 == 1 then
    chirik_sound:play()
  elseif distanceBetween(npc_bird.x,npc_bird.y,player_1.body1:getX(),player_1.body1:getY()) > 900 and chirik2 == 1 then
    chirik_sound:stop()
  end


 -- Exit button

  TempCode()

  function spawnPlatform(x, y, width, height)
    local platform = {}
    platform.body = lp.newBody(myWorld, x, y, "static") -- Static body
    platform.shape = lp.newRectangleShape(width/2, height/2, width, height) --[[4]]
    platform.fixture = lp.newFixture(platform.body, platform.shape)
    platform.width = width
    platform.height = height
    platform.body1 = lp.newBody(myWorld1, x, y, "static") -- Static body
    platform.shape1 = lp.newRectangleShape(width/2, height/2, width, height) --[[4]]
    platform.fixture1 = lp.newFixture(platform.body1, platform .shape1)
    platform.body2 = lp.newBody(myWorld2, x, y, "static") -- Static body
    platform.shape2 = lp.newRectangleShape(width/2, height/2, width, height) --[[4]]
    platform.fixture2 = lp.newFixture(platform.body2, platform .shape2)

  -- Draw NPC
npc.animation:draw(npc.sprite, npc.x, npc.y, nil,npc.r,1 )
npc1.animation:draw(npc1.sprite, npc1.x, npc1.y, nil,npc1.r,1 )
npc_bird.animation:draw(sprites.npc_bird, npc_bird.x, npc_bird.y)
if kg == 2 then
  npc.sprite = sprites.dialog
end
if ki == 2 then
  npc.sprite = sprites.dialog
end
  -- Draw player 1
player_1.animation:draw(player_1.sprite, player_1.body1:getX(), player_1.body1:getY(),
player_1.angle, player_1.direction, 1, sprites.player_1d:getWidth()/2, sprites.player_1d:getHeight()/2 )
  -- Draw player 2
player.animation:draw(player.sprite, player.body:getX(), player.body:getY(),
player.angle, player.direction,1, sprites.player_1d:getWidth()/2, sprites.player_1d:getHeight()/2 )
-- Монстр
monstr.animation:draw(monstr.sprite, monstr.body2:getX()+35, monstr.body2:getY()-3,
monstr.angle, monstr.direction,1, sprites.monstr:getWidth()/2, sprites.monstr:getHeight()/2 )
end

mouseMenu()
if player.dead == false then
if player.grounded == false then
player.sprite = sprites.playeranh
end
end
if player_1.dead == false then
if player_1.grounded1 == false then
player_1.sprite = sprites.playerankiwj
end
end



    cam:attach()

for i, p in ipairs (platforms) do
  lg.rectangle('fill', p.body:getX(), p.body:getY(), p.width, p.height)
end
-- 2nd Draw player
player.animation:draw(player.sprite, player.body:getX(), player.body:getY(),
player.angle, player.direction,1, sprites.player_1d:getWidth()/2, sprites.player_1d:getHeight()/2 )
player_1.animation:draw(player_1.sprite, player_1.body1:getX(), player_1.body1:getY(),
player_1.angle, player_1.direction, 1, sprites.player_1d:getWidth()/2, sprites.player_1d:getHeight()/2 )
  gameMap:drawLayer(gameMap.layers["fon4"])
  gameMap:drawLayer(gameMap.layers["fon3"])
  -- Background's MAIN
  gameMap:drawLayer(gameMap.layers["background_8"])
  gameMap:drawLayer(gameMap.layers["background_7"])
  gameMap:drawLayer(gameMap.layers["background_6"])
  gameMap:drawLayer(gameMap.layers["background_5"])
  gameMap:drawLayer(gameMap.layers["background_4"])
  gameMap:drawLayer(gameMap.layers["background_3"])
  gameMap:drawLayer(gameMap.layers["background_2"])
  gameMap:drawLayer(gameMap.layers["background"])
  -- MENU
  gameMap:drawLayer(gameMap.layers["menu_background"])
  gameMap:drawLayer(gameMap.layers["logo"])

  gameMap:drawLayer(gameMap.layers["tile_level_1"])

  for i,obj in ipairs(gameMap.layers["tile_objects"].objects) do
    spawnPlatform(obj.x, obj.y, obj.width, obj.height)

    for i,c in ipairs(coins) do
      c.animation:draw(sprites.coin_sheet, c.x, c.y, nil, nil, nil, 20.5, 21)
    end
    end
    if monstr.dead == true then
    for i,c in ipairs(coins) do
    c.animation:draw(sprites.coin_sheet, monstr.body2:getX(), monstr.body2:getY())
    end
    if distanceBetween(monstr.body2:getX()+25,monstr.body2:getY(),player.body:getX(),player.body:getY()) < 30 and c == 1 then
    score = score + 1
    c = 2
    coin_sound:play()
    sprites.coin_sheet = sprites.pusto
  end
end


       -- SETUP MENU TEXT
        lg.draw(sprites.menu_start, 515, 300, 0, 2)
        lg.draw(sprites.menu_options, 515, 400 , 0, 2)
        lg.draw(sprites.menu_exit, 515, 500 , 0, 2)
        -- SETUP GAME OVER FONT
        lg.setColor(COLORS.white)
        lg.setFont(game_over_font)
        lg.print ("Game over", 69100, 338)
        --

        -- Setup draw info of Players
        lg.setFont(myFont)
        lg.setColor(COLORS.console)
        -- DRAW NICKNAME
         if player.dead == false then
        lg.print("Shuichi",player.body:getX()-42, player.body:getY()-70)
      end
     if player_1.dead == false then
        lg.print("Kaito", player_1.body1:getX()-30, player_1.body1:getY()-70)
      end

      love.graphics.setColor(0, 0, 0)
      if monstr.dead == false then
         lg.print("testing", monstr.body2:getX()-28, monstr.body2:getY()-77)
       end

      lg.setColor(COLORS.white)

      --полоска хп моба 1
      if monstr.dead == false then
      if lg.draw(sprites.ui_health3,monstr.body2:getX()-60,monstr.body2:getY()-100) then
      end
    end

 --lg.print("tt=" ..  math.floor(tt), player.body:getX()-21, player.body:getY()-80)
      -- DRAW KD STATE

    --  if gameState == 2 then
    --      lg.setFont(iFont)
    --        lg.setColor(COLORS.black)
    --       lg.print("kd=" ..  math.floor(timer1), player.body:getX()-21, player.body:getY()-80)
    --     end
    --     if gameState == 2 and player_1.dead == false then
    --        lg.setFont(iFont)
    --        lg.print("kd=" ..  math.floor(timer2), player_1.body1:getX()-21, player_1.body1:getY()-80)
    --      end]
    -- сам лук
    love.graphics.draw(sprites.luks, 3100, 610)
    if distanceBetween(player.body:getX(),player.body:getY(),3150,610) < 50 and arb == 1 then
      sprites.luks = sprites.pusto
      arb = 2
    end
    if distanceBetween(player_1.body1:getX(),player_1.body1:getY(),3150,610) < 50 and arb == 1 then
      sprites.luks = sprites.pusto
      arb = 3
    end
    --спавн стрел
        for i,b in ipairs(bullets) do
           love.graphics.draw(sprites.bullet, b.x, b.y)
         end
         for i,b in ipairs(bullets_1) do
            love.graphics.draw(sprites.bullet_1, b.x, b.y)
          end
          for i,b in ipairs(bullets2) do
             love.graphics.draw(sprites.bullet_2, b.x, b.y)
           end
           for i,b in ipairs(bullets_2) do
              love.graphics.draw(sprites.bullet2, b.x, b.y)
            end
            --игрок первый
            if player.dead == false then
            for i,b in ipairs(bullets) do
            if distanceBetween(b.x,b.y,player_1.body1:getX()-75,player_1.body1:getY()-30) < 45 and player_1.dead == false then
            health2 = health2 - 1
            bullet.dead = true
            player_1.body1:applyLinearImpulse(500,-500)
            elseif
            distanceBetween(b.x,b.y,monstr.body2:getX()-50,monstr.body2:getY()-30) < 45 and monstr.dead == false then
            health3 = health3 - 1
            bullet.dead = true
            monstr.body2:applyLinearImpulse(500,-500)
            end
            end
            for i,b in ipairs(bullets_1) do
            if distanceBetween(b.x,b.y,player_1.body1:getX()-75,player_1.body1:getY()-30) < 45 and player_1.dead == false then
            health2 = health2 - 1
            bullet_1.dead = true
            player_1.body1:applyLinearImpulse(-500,-500)
            elseif
            distanceBetween(b.x,b.y,monstr.body2:getX()-50,monstr.body2:getY()-30) < 45 and monstr.dead == false then
            health3 = health3 - 1
            bullet_1.dead = true
            monstr.body2:applyLinearImpulse(-500,-500)
            end
            end
          end
            --игрок второй
            if player_1.dead == false then
            for i,b in ipairs(bullets2) do
            if distanceBetween(b.x,b.y,player.body:getX()-75,player.body:getY()-30) < 45 and player.dead == false then
            health = health - 1
            bullet2.dead = true
            player.body:applyLinearImpulse(-500, -500)
            elseif
            distanceBetween(b.x,b.y,monstr.body2:getX()-50,monstr.body2:getY()-30) < 45 and monstr.dead == false then
            bullet2.dead = true
            monstr.body2:applyLinearImpulse(-500,-500)
            end
            end
            for i,b in ipairs(bullets_2) do
            if distanceBetween(b.x,b.y,player.body:getX()-75,player.body:getY()-30) < 45 and player.dead == false then
            health3 = health3 - 1
            health = health - 1
            bullet_2.dead = true
            player.body:applyLinearImpulse(500, -500)
            elseif
            distanceBetween(b.x,b.y,monstr.body2:getX()-50,monstr.body2:getY()-30) < 45 and monstr.dead == false then
            health3 = health3 - 1
            bullet_2.dead = true
            monstr.body2:applyLinearImpulse(500,-500)
            end
            end
          end

if arrows <= 0 then
  arb = 1
end
if arrows2 <= 0 then
  arb = 1
end

      cam:detach()

--меню игры
if gameState == 1 then
dvig = 2
dvig1 = 2
end
if gameState == 2 then
dvig = 1
dvig1 = 1
end
if gameState == 3 then
dvig = 2
dvig1 = 2
end
if gameState == 4 then
dvig = 2
dvig1 = 2
end

if tt == 4 and gameState == 4 then
lg.draw(sprites.menu4,500,300)
end
if tt == 3 and gameState == 4 then
lg.draw(sprites.menu3,500,300)
end
if tt == 2 and gameState == 4 then
lg.draw(sprites.menu2,500,300)
end
if tt == 1 and gameState == 4 then
lg.draw(sprites.menu1,500,300)
end

if tt == 1 and gameState == 4 and love.keyboard.isDown("return") then
  love.event.quit()
end



          if kg == 2 and statusdialog == 2 then
          lg.draw(sprites.test,0,645)
          lg.draw(sprites.test2,795,645)
          lg.setFont(dialog)
          lg.print("Нажмите 1 или 2 для выбора.",200, 655)
          lg.print("1)Согласиться помочь.",200, 685)
          lg.print("2)Спросить о вознаграждении.",200, 715)
          lg.print("Путник.",985,645)
          lg.print("Нашу деревню разграбили бандиты,",870,667)
          lg.print("Все дома сожжены и несколько жителей были похищены,",805,692)
          lg.print("Нам необходима ваша помощь.",889,718)
          dvig = 2
          end
          if kg == 2 and statusdialog == 3 then
          lg.draw(sprites.test,0,645)
          lg.draw(sprites.test2,795,645)
          lg.setFont(dialog)
          lg.print("Конечно помогу, не могу же я оставить вас в беде,",130, 655)
          lg.print("Могу я узнать где находится ваша деревня?,",145, 685)
          lg.print("Я обязательно спасу ваших жителей.",175, 715)
          lg.print("Большое вас спасибо, я буду ждать вас в деревне,",825,655)
          lg.print("Путь к которой проходит через лес на востоке,",835,685)
          lg.print("Логово бандитов находится недалеко от деревни.",825,715)
          dvig = 1
          end
          if kg == 2 and statusdialog == 4 then
          lg.draw(sprites.test,0,645)
          lg.draw(sprites.test2,795,645)
          lg.setFont(dialog)
          lg.print("Могу ли я рассчитывать на вознаграждение за",130, 655)
          lg.print("Помощь вам и вашей деревне и спасение жителей,",130, 685)
          lg.print("Ведь это работа опасная и рисковая.",175, 715)
          lg.print("Мои деньги и вещи были похищены либо сожжены",830,655)
          lg.print("Но если поможете нам, мы обязательно найдём чем",825,685)
          lg.print("вам отплатить, только спасите моих товарищей.",835,715)
          dvig = 1
          end
          if ki == 2 and statusdialog_1 == 2 then
          lg.draw(sprites.test1,0,645)
          lg.draw(sprites.test2,795,645)
          lg.setFont(dialog)
          lg.print("Нажмите 1 или 2 для выбора.",200, 655)
          lg.print("1)Согласиться помочь.",200, 685)
          lg.print("2)Спросить о вознаграждении.",200, 715)
          lg.print("Путник.",985,645)
          lg.print("Нашу деревню разграбили бандиты,",870,667)
          lg.print("Все дома сожжены и несколько жителей были похищены,",805,692)
          lg.print("Нам необходима ваша помощь.",889,718)
          dvig1 = 2
          end
          if ki == 2 and statusdialog_1 == 3 then
          lg.draw(sprites.test1,0,645)
          lg.draw(sprites.test2,795,645)
          lg.setFont(dialog)
          lg.print("Так и быть, я помогу вам разобраться с бандатами,",125, 665)
          lg.print("Это будет хорошем для нас приключением а, так же",130, 685)
          lg.print("Возможностью прославиться, куда нам держать путь?",113, 705)
          lg.print("Большое вас спасибо, я буду ждать вас в деревне,",825,655)
          lg.print("Путь к которой проходит через лес на востоке,",835,685)
          lg.print("Логово бандитов находится недалеко от деревни.",825,715)
          dvig1 = 1
          end
          if ki == 2 and statusdialog_1 == 4 then
          lg.draw(sprites.test1,0,645)
          lg.draw(sprites.test2,795,645)
          lg.setFont(dialog)
          lg.print("Возможно я вам и помогу, если вы сможете",160, 655)
          lg.print("Предоставить хорошую плату за мою работу,",150, 675)
          lg.print("Без достоиного вознаграждения за мои труды,",140, 695)
          lg.print("Моей помощи вам не видать.",215, 715)
          lg.print("Мои деньги и вещи были похищены либо сожжены",830,655)
          lg.print("Но если поможете нам, мы обязательно найдём чем",825,685)
          lg.print("вам отплатить, только спасите моих товарищей.",835,715)
          dvig1 = 1
          end

    if gameState == 2 then
  drawCoins()
  drawHealth()
  if arb == 2 then
  drawArrows()
end
if arb == 3 then
  drawArrows2()
end
  end
end

--================= секция функций ============
 -- генерация блоков платформы   -----
function distanceBetween(x1, y1, x2, y2)
  return math.sqrt((y2 - y1)^2 +  (x2 -x1)^2 )
end
function love.keypressed(key, scancode, isrepeat)
  if key =="up" and player.grounded == true and player.dead == false and dvig == 1 then ---[[6]]
  player.body:applyLinearImpulse(0, -1400)
  timer1 = timer1 - 1
elseif key == "w" and player_1.grounded1 == true and player_1.dead == false and dvig1 == 1 then
  player_1.body1:applyLinearImpulse(0, -1400)
  timer2 = timer2 - 1
elseif key == "k" and distanceBetween(player.body:getX(),player.body:getY(),player_1.body1:getX()+35,player_1.body1:getY()) < 35 and player_1.dead == false and timer6 >= 0 then
timer6 = timer6 - 0.5
player_1.body1:applyLinearImpulse(-500,-500)
health2 = health2 - 1
tm = 2
elseif key == "k"  and distanceBetween(player.body:getX(),player.body:getY(),player_1.body1:getX()-35,player_1.body1:getY()) < 35 and player_1.dead == false and timer6 >= 0 then
timer6 = timer6 - 0.5
player_1.body1:applyLinearImpulse(500,-500)
health2 = health2 - 1
tm = 3
elseif key == "k"  and distanceBetween(player.body:getX(),player.body:getY(),monstr.body2:getX()+45,monstr.body2:getY()) < 35 and monstr.dead == false and timer6 >= 0 then
timer6 = timer6 - 0.5
health3 = health3 - 1
monstr.body2:applyLinearImpulse(-500,-500)
tm = 2
elseif key == "k"  and distanceBetween(player.body:getX(),player.body:getY(),monstr.body2:getX()-20,monstr.body2:getY()) < 35 and monstr.dead == false and timer6 >= 0 then
timer6 = timer6 - 0.5
health3 = health3 - 1
monstr.body2:applyLinearImpulse(500,-500)
tm = 3
elseif key == "f" and distanceBetween(player.body:getX()+35,player.body:getY(),player_1.body1:getX(),player_1.body1:getY()) < 35 and player.dead == false and timer7 >= 0 then
timer7 = timer7 - 0.5
  player.body:applyLinearImpulse(-500,-500)
health = health - 1
tm = 4
elseif key == "f" and distanceBetween(player.body:getX()-35,player.body:getY(),player_1.body1:getX(),player_1.body1:getY()) < 35 and player.dead == false and timer7 >= 0 then
timer7 = timer7 - 0.5
player.body:applyLinearImpulse(500,-500)
health = health - 1
tm = 5
elseif key == "f" and distanceBetween(monstr.body2:getX()+45,monstr.body2:getY(),player_1.body1:getX(),player_1.body1:getY()) < 35 and monstr.dead == false and timer7 >= 0 then
timer7 = timer7 - 0.5
health3 = health3 - 1
monstr.body2:applyLinearImpulse(-500,-500)
tm = 4
elseif key == "f" and distanceBetween(monstr.body2:getX()-35,monstr.body2:getY(),player_1.body1:getX(),player_1.body1:getY()) < 35 and monstr.dead == false and timer7 >= 0 then
timer7 = timer7 - 0.5
health3 = health3 - 1
monstr.body2:applyLinearImpulse(500,-500)
tm = 5
elseif key == "l" and luk == 1 and timer4 >= 0 and arb == 2 then
  timer4 = timer4 - 1.25
  arrows = arrows - 1
  spawnBullet_1()
elseif key == "l" and luk == 2 and timer4 >= 0 and arb == 2 then
  timer4 = timer4 - 1.25
  arrows = arrows - 1
  spawnBullet()
elseif key == "g" and luk2 == 1 and timer5 >= 0 and arb == 3 then
  timer5 = timer5 - 1.25
  arrows2 = arrows2 - 1
  spawnBullet2()
elseif key == "g" and luk2 == 2 and timer5 >= 0 and arb == 3 then
  timer5 = timer5 - 1.25
  arrows2 = arrows2 - 1
  spawnBullet_2()
elseif key == "escape" and gameState == 2 then
  gameState = 4
elseif key == "escape" and gameState == 4 then
  gameState = 2
elseif key == "1" and statusdialog == 2 then
  statusdialog = 3
elseif key == "2" and statusdialog == 2 then
  statusdialog = 4
elseif key == "1" and statusdialog_1 == 2 then
  statusdialog_1 = 3
elseif key == "2" and statusdialog_1 == 2 then
  statusdialog_1 = 4
elseif key == "up" and gameState == 4 then
tt = tt + 1
elseif key == "down" and gameState == 4 then
tt = tt - 1
end

end







  OtherFunctions()
