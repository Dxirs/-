bullets = {} -- игрока первого
-- Класс пуля
function spawnBullet()
bullet = {}
bullet.x = player.body:getX()-30
bullet.y = player.body:getY()-40
bullet.speed = 500
bullet.dead = false
table.insert(bullets, bullet)
end
bullets_1 = {} -- тоже первого только в другую сторону
-- Класс пуля
function spawnBullet_1()
bullet_1 = {}
bullet_1.x = player.body:getX()-100
bullet_1.y = player.body:getY()-40
bullet_1.speed = 500
bullet_1.dead = false
table.insert(bullets_1, bullet_1)
end
bullets2 = {} --игрока второго
-- Класс пуля
function spawnBullet2()
bullet2 = {}
bullet2.x = player_1.body1:getX()-100
bullet2.y = player_1.body1:getY()-40
bullet2.speed = 500
bullet2.dead = false
table.insert(bullets2, bullet2)
end
bullets_2 = {} --тоже второго только в другую сторону
-- Класс пуля
function spawnBullet_2()
bullet_2 = {}
bullet_2.x = player_1.body1:getX()-30
bullet_2.y = player_1.body1:getY()-40
bullet_2.speed = 500
bullet_2.dead = false
table.insert(bullets_2, bullet_2)
end
