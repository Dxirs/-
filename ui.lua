local lg = love.graphics
function loadUI()
-- GLobal
sprites.globalui = lg.newImage('assets/sprites/ui/ui_global.png')
sprites.ui_health = lg.newImage('assets/sprites/ui/new/ui_health.png')
sprites.ui_empty = lg.newImage('assets/sprites/ui/new/ui_empty.png')
-- GLobal player_2
sprites.globalui_2 = lg.newImage('assets/sprites/ui/ui_global_player_2.png')
sprites.ui_health_2 = lg.newImage('assets/sprites/ui/new/player_2/ui_health.png')
sprites.ui_empty_2 = lg.newImage('assets/sprites/ui/new/player_2/ui_empty.png')
-- Inventory
sprites.inventory_closed = lg.newImage('assets/sprites/ui/new/ui_inventory_closed.png')
sprites.inventory_1 = lg.newImage('assets/sprites/ui/new/ui_inventory_1.png')
sprites.bow = love.graphics.newImage('assets/sprites/ui/new/bow.png')
-- Inventory_player_2
sprites.inventory_closed_2 = lg.newImage('assets/sprites/ui/new/player_2/ui_inventory_closed.png')
sprites.inventory_1_2 = lg.newImage('assets/sprites/ui/new/player_2/ui_inventory_1.png')
sprites.bow_2 = love.graphics.newImage('assets/sprites/ui/new/player_2/bow.png')
-- Отрисовка здоровья для мобов
sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health.png')
end
function drawUI()
  if gameState == 2 and player_1.dead == true then
    lg.draw(sprites.globalui, 1 , 1)
    lg.draw(sprites.ui_health, 169, 9)
    lg.draw(sprites.ui_empty, 169, 49)
    lg.draw(sprites.ui_empty, 169, 89)
    lg.draw(sprites.inventory_closed, 500 , 680)
end
if gameState == 2 and player_1.dead == false then
  lg.draw(sprites.globalui, 1 , 1)
  lg.draw(sprites.ui_health, 169, 9)
  lg.draw(sprites.ui_empty, 169, 49)
  lg.draw(sprites.ui_empty, 169, 89)
  lg.draw(sprites.inventory_closed, 200 , 680)
  lg.draw(sprites.globalui_2, 1 , 135)
  lg.draw(sprites.ui_health_2, 169, 143)
  lg.draw(sprites.ui_empty_2, 169, 183)
  lg.draw(sprites.ui_empty_2, 169, 223)
  lg.draw(sprites.inventory_closed_2, 800 , 680)
end
end
function drawArrows()
lg.setColor(COLORS.white)
lg.setFont(ui_coins_font)
lg.draw(sprites.inventory_1, 500 , 680)
lg.draw(sprites.bow, 545 , 692)
lg.print(math.floor(arrows),575, 730)
end
--[[ Отрисовка UI монеток
function drawCoins()
lg.setColor(COLORS.white)
lg.setFont(ui_coins_font)
lg.draw(sprites.ui_coins, 5, 75)
lg.print(score , 100 , 94)
end
-- Отрисовка UI стрел
function drawArrows()
lg.setColor(COLORS.white)
lg.setFont(ui_coins_font)
lg.draw(sprites.ui_arrows, 5, 140)
lg.print(math.floor(arrows),100, 157)
end
-- Отрисовка UI стрел во втором случае
function drawArrows2()
lg.setColor(COLORS.white)
lg.setFont(ui_coins_font)
lg.draw(sprites.ui_arrows2, 270, 75)
lg.print(math.floor(arrows2),366, 94)
end ]]--
