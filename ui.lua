local lg = love.graphics
function loadUI()
  sprites.ui_coins = lg.newImage('assets/sprites/ui/ui_coins.png')
  sprites.ui_arrows = lg.newImage('assets/sprites/ui/ui_arrows.png')
  sprites.ui_arrows2 = lg.newImage('assets/sprites/ui/ui_arrows2.png')
  sprites.ui_health = lg.newImage('assets/sprites/ui/ui_health.png')
  sprites.ui_health_p1 = lg.newImage('assets/sprites/ui/ui_health_p1.png')
  sprites.ui_health_p2 = lg.newImage('assets/sprites/ui/ui_health_p2.png')
  sprites.ui_health_0 = lg.newImage('assets/sprites/ui/ui_health_0.png')
  sprites.ui_health_10 = lg.newImage('assets/sprites/ui/ui_health_10.png')
  sprites.ui_health_20 = lg.newImage('assets/sprites/ui/ui_health_20.png')
  sprites.ui_health_30 = lg.newImage('assets/sprites/ui/ui_health_30.png')
  sprites.ui_health_40 = lg.newImage('assets/sprites/ui/ui_health_40.png')
  sprites.ui_health_50 = lg.newImage('assets/sprites/ui/ui_health_50.png')
  sprites.ui_health_60 = lg.newImage('assets/sprites/ui/ui_health_60.png')
  sprites.ui_health_70 = lg.newImage('assets/sprites/ui/ui_health_70.png')
  sprites.ui_health_80 = lg.newImage('assets/sprites/ui/ui_health_80.png')
  sprites.ui_health_90 = lg.newImage('assets/sprites/ui/ui_health_90.png')
  -- 2-ой плеер
  sprites.ui_healtz_0 = lg.newImage('assets/sprites/ui/ui_healtz_0.png')
  sprites.ui_healtz_10 = lg.newImage('assets/sprites/ui/ui_healtz_10.png')
  sprites.ui_healtz_20 = lg.newImage('assets/sprites/ui/ui_healtz_20.png')
  sprites.ui_healtz_30 = lg.newImage('assets/sprites/ui/ui_healtz_30.png')
  sprites.ui_healtz_40 = lg.newImage('assets/sprites/ui/ui_healtz_40.png')
  sprites.ui_healtz_50 = lg.newImage('assets/sprites/ui/ui_healtz_50.png')
  sprites.ui_healtz_60 = lg.newImage('assets/sprites/ui/ui_healtz_60.png')
  sprites.ui_healtz_70 = lg.newImage('assets/sprites/ui/ui_healtz_70.png')
  sprites.ui_healtz_80 = lg.newImage('assets/sprites/ui/ui_healtz_80.png')
  sprites.ui_healtz_90 = lg.newImage('assets/sprites/ui/ui_healtz_90.png')
  --моб первый
  sprites.ui_health3 = lg.newImage('assets/sprites/ui/mobs/ui_health.png')
  sprites.ui_health3_0 = lg.newImage('assets/sprites/ui/mobs/ui_health_0.png')
  sprites.ui_health3_10 = lg.newImage('assets/sprites/ui/mobs/ui_health_10.png')
  sprites.ui_health3_20 = lg.newImage('assets/sprites/ui/mobs/ui_health_20.png')
  sprites.ui_health3_30 = lg.newImage('assets/sprites/ui/mobs/ui_health_30.png')
  sprites.ui_health3_40 = lg.newImage('assets/sprites/ui/mobs/ui_health_40.png')
  sprites.ui_health3_50 = lg.newImage('assets/sprites/ui/mobs/ui_health_50.png')
  sprites.ui_health3_60 = lg.newImage('assets/sprites/ui/mobs/ui_health_60.png')
  sprites.ui_health3_70 = lg.newImage('assets/sprites/ui/mobs/ui_health_70.png')
  sprites.ui_health3_80 = lg.newImage('assets/sprites/ui/mobs/ui_health_80.png')
  sprites.ui_health3_90 = lg.newImage('assets/sprites/ui/mobs/ui_health_90.png')
  end

function drawHealth()
  if gameState == 2 and player_1.dead == true and player.dead == false then
    lg.draw(sprites.ui_health, 5, 10)
  end
  if gameState == 2 and player_1.dead == false and player.dead == true then
    lg.draw(sprites.ui_health_p1, 5, 10)
    lg.draw(sprites.ui_health_p2, 270, 10)
 end
 if gameState == 2 and player_1.dead == false and player.dead == false then
   lg.draw(sprites.ui_health_p1, 5, 10)
   lg.draw(sprites.ui_health_p2, 270, 10)
 end
if gameState == 2 and player_1.dead == true and player.dead == true then
  lg.draw(sprites.ui_health_p1, 5, 10)
  lg.draw(sprites.ui_health_p2, 270, 10)
end
end

function drawCoins()
  lg.setColor(COLORS.white)
  lg.setFont(ui_coins_font)
  lg.draw(sprites.ui_coins, 5, 75)
  lg.print(score , 100 , 94)
end
function drawArrows()
  lg.setColor(COLORS.white)
  lg.setFont(ui_coins_font)
  lg.draw(sprites.ui_arrows, 5, 140)
  lg.print(math.floor(arrows),100, 157)
end
function drawArrows2()
  lg.setColor(COLORS.white)
  lg.setFont(ui_coins_font)
  lg.draw(sprites.ui_arrows2, 270, 75)
  lg.print(math.floor(arrows2),366, 94)
end
