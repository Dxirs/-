--меню
if love.keyboard.isDown("o") then
gameState = 3
end
if love.keyboard.isDown("p") then
gameState = 2
end
if gameState == 3 then
  dvig = 2
  dvig1 = 2
end
if tt == 4 and gameState == 3 then
lg.draw(sprites.menu4,500,300)
end
if tt == 3 and gameState == 3 then
lg.draw(sprites.menu3,500,300)
end
if tt == 2 and gameState == 3 then
lg.draw(sprites.menu2,500,300)
end
if tt == 1 and gameState == 3 then
lg.draw(sprites.menu1,500,300)
end

if tt == 1 and gameState == 3 and love.keyboard.isDown("u") then
  love.event.quit()
end
