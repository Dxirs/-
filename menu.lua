require('resources')

function mouseMenu()
  function love.mousepressed(x, y, b, isTouch)
  if gameState == 1 then
  if distanceBetween(button2.x, button2.y, love.mouse.getX(), love.mouse.getY()) < button2.size then
  menu_sfx:play()
  --main_sound:play()
  gameState = 2
  elseif
  distanceBetween(button1.x, button1.y, love.mouse.getX(), love.mouse.getY()) < button1.size then
  love.event.quit()
  elseif
    distanceBetween(button.x, button.y, love.mouse.getX(), love.mouse.getY()) < button.size and gameState == 1 then
    player_1.dead = true
    ded = 2
    sprites.menu_start = sprites.menu_start_pressed
    if sprites.menu_start == sprites.menu_start_pressed then
      menu_sfx:play()
      gameState = 2
  end








end
end
end
end
