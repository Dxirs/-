coins = {}
-- Функция создания монетки
function spawnCoin(x, y)
-- Создание монетки в заданных координатах
local coin = {}
coin.x = x
coin.y = y
coin.collected = false
-- Создание решётки анимации
coin.grid = anim8.newGrid(41, 42, 123, 126)
-- Настройка анимации
coin.animation = anim8.newAnimation(coin.grid('1-3',1, '1-3',2, '1-2',3), 0.2)

table.insert(coins, coin) -- вносим монетку в глобальную таблицу
end
--Обновление монетки
function coinUpdate(dt)
for i,c in ipairs (coins) do
if distanceBetween(c.x+23,c.y,player.body:getX(),player.body:getY()) < 30 then
c.collected = true
score = score + 1
coin_sound:play()
  end
for i,c in ipairs (coins) do
if distanceBetween(c.x+23,c.y,player_1.body1:getX(),player_1.body1:getY()) < 30 then
c.collected = true
score = score + 1
coin_sound:play()
end
end
for i=#coins, 1 , -1 do
local c = coins[i]
if c.collected == true then
table.remove(coins, i)
end
end
end
end
