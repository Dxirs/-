
npc_bird = {}
npc_bird.x = 10000
npc_bird.y = 10000
npc_bird.speed = 100
npc_bird.grid = anim8.newGrid(66,66,200,200)
npc_bird.animation = anim8.newAnimation(npc_bird.grid('1-3',1, '1-3',2 , '1-3',3),0.1)
function animbirdUpdate(dt)
  npc_bird.x = npc_bird.x - npc_bird.speed * dt
end
