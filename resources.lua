--[[

   RESOURCES FILE FOR MAIN :)

]]
platforms = {}
sprites = {}
-- VARIABLES FOR MAKE EASY U LIFE :D
local la = love.audio
local lg = love.graphics

COLORS = {
  blue  = {0,0,255},
  white = {255,255,255},
  red   = {255,0,0},
  green = {0,255,0},
  black = {0,0,0},
  console = {0, 255, 0, 255},
}

function loadImages()
sprites.pusto = lg.newImage('assets/sprites/pusto.png')
sprites.coin_sheet   = lg.newImage('assets/sprites/coin_sheet.png')
sprites.player_1d = lg.newImage ('assets/sprites/animation/333_1.png')
sprites.playeranim1s = lg.newImage('assets/sprites/animation/playerst.png')
sprites.player1animm = lg.newImage('assets/sprites/animation/playervlev.png')
sprites.playerani = lg.newImage('assets/sprites/animation/playervprav.png')
sprites.playeran = lg.newImage('assets/sprites/animation/s2.png')
sprites.playeranh = lg.newImage('assets/sprites/animation/99jj.png')
sprites.playeranl = lg.newImage('assets/sprites/animation/a3.png')
sprites.playerank = lg.newImage('assets/sprites/animation/d4.png')
sprites.playeranki = lg.newImage('assets/sprites/animation/standg.png')
sprites.playerankij = lg.newImage('assets/sprites/animation/s3.png')
sprites.playerankiwj = lg.newImage('assets/sprites/animation/889.png')
sprites.levr = lg.newImage('assets/sprites/animation/levr.png')
sprites.pravr = lg.newImage('assets/sprites/animation/pravr.png')
sprites.stop = lg.newImage('assets/sprites/animation/stop.png')
sprites.stop1 = lg.newImage('assets/sprites/animation/stop1.png')
sprites.levr1 = lg.newImage('assets/sprites/animation/levr1.png')
sprites.pravr1 = lg.newImage('assets/sprites/animation/pravr1.png')
sprites.bullet = lg.newImage('assets/sprites/animation/bullet.png')
sprites.bullet_1 = lg.newImage('assets/sprites/animation/bullet_1.png')
sprites.bullet2 = lg.newImage('assets/sprites/animation/bullet2.png')
sprites.bullet_2 = lg.newImage('assets/sprites/animation/bullet_2.png')
sprites.monstr = lg.newImage('assets/sprites/monstr.png')
sprites.luks = lg.newImage('assets/sprites/luks.png')
sprites.luk = lg.newImage('assets/sprites/animation/luk.png')
sprites.luk1 = lg.newImage('assets/sprites/animation/luk1.png')
sprites.luk2 = lg.newImage('assets/sprites/animation/luk2.png')
sprites.luk_2 = lg.newImage('assets/sprites/animation/luk_2.png')
sprites.dead = lg.newImage('assets/sprites/animation/dead.png')
sprites.test = lg.newImage('assets/sprites/dialog/test.png')
sprites.test1 = lg.newImage('assets/sprites/dialog/test1.png')
sprites.test2 = lg.newImage('assets/sprites/dialog/test2.png')
sprites.p223 = lg.newImage('assets/sprites/dialog/p223.png')
sprites.p234 = lg.newImage('assets/sprites/dialog/p234.png')
sprites.p235 = lg.newImage('assets/sprites/dialog/p235.png')
sprites.p235_1 = lg.newImage('assets/sprites/dialog/p235_1.png')
sprites.p224 = lg.newImage('assets/sprites/dialog/p224.png')
sprites.p225 = lg.newImage('assets/sprites/dialog/p225.png')
sprites.p236 = lg.newImage('assets/sprites/dialog/p236.png')
sprites.p236_1 = lg.newImage('assets/sprites/dialog/p236_1.png')
-- NPС SPRITES
sprites.npcanim = lg.newImage('assets/sprites/animation/npc/npc_anim_stay.png')
sprites.npcanimm = lg.newImage('assets/sprites/animation/npc/npc_anim_move.png')
sprites.npcanimm2 = lg.newImage('assets/sprites/animation/npc/npc_anim_move2.png')
sprites.npcanimq = lg.newImage('assets/sprites/animation/npc/quest_anim.png')
sprites.dialog = lg.newImage('assets/sprites/animation/npc/npc_anim_dialog.png')
sprites.npcanimw = lg.newImage('assets/sprites/animation/npc/2npc_anim_stay.png')
sprites.npcanimk = lg.newImage('assets/sprites/animation/npc/2npc_anim_move1.png')
sprites.npcanimj = lg.newImage('assets/sprites/animation/npc/2npc_anim_move2.png')
sprites.npcanimh = lg.newImage('assets/sprites/animation/npc/2npc_anim_cry.png')
-- MAIN MENU (BETA)
sprites.menu4 = lg.newImage('assets/sprites/menu/menu4.png')
sprites.menu3 = lg.newImage('assets/sprites/menu/menu3.png')
sprites.menu2 = lg.newImage('assets/sprites/menu/menu2.png')
sprites.menu1 = lg.newImage('assets/sprites/menu/menu1.png')
sprites.menu_start = lg.newImage('assets/sprites/menu/main_menu_start.png')
sprites.menu_start_pressed = lg.newImage('assets/sprites/menu/main_menu_start_pressed.png')
--
sprites.menu_options = lg.newImage('assets/sprites/menu/main_menu_options.png')
sprites.menu_options_pressed = lg.newImage('assets/sprites/menu/main_menu_options_pressed.png')
--
sprites.menu_exit = lg.newImage('assets/sprites/menu/main_menu_exit.png')
sprites.menu_exit_pressed = lg.newImage('assets/sprites/menu/main_menu_exit_pressed.png')
-- Animals
sprites.npc_bird = lg.newImage('assets/sprites/animation/npc/animals/birdanim1.png')
-- UI
loadUI()
end

function loadSounds()
  -- Game Over sound
  game_over_music = la.newSource("assets/sounds/gameover.wav")
  -- Menu SFX Sounds
  menu_sfx = la.newSource("assets/sounds/sfx.wav")
  -- Main music
  main_sound = la.newSource("assets/sounds/main_sound.mp3")
  main_sound:setLooping(true)
  main_sound:setVolume (0.2)
  main_sound:setPitch(0.9)
  -- COIN COLLECT MUSIC
  coin_sound = la.newSource('assets/sounds/coin.mp3')
  coin_sound:setVolume(0.8)
  coin_sound:setPitch(0.9)
  -- BIRD SOUND
  chirik_sound = la.newSource('assets/sounds/chirik.mp3')
  chirik_sound:setVolume(0.9)
  chirik_sound:setPitch(0.9)
end

function loadFonts()
  myFont = lg.newFont(20)
  pFont = lg.newFont(18)
  iFont = lg.newFont(12)
  ui_coins_font = lg.newFont('assets/fonts/font.ttf', 24)
  dialog = lg.newFont('assets/fonts/font3.ttf', 20)
  game_over_font = lg.newFont('assets/fonts/font.ttf', 60)
end
function loadVariables()
  -- SETUP DEFAULT VALUES
  gameState = 1 -- Cостояние игры
  --[[
      -- Реализовать не удалось (Оставил по умолчанию) :(
  5 - STATE_LEVEL_COMPLETE - Уровень завершён
  4 - STATE_PAUSED - Игра приостановлена
  3 - STATE_STOP - Игра остановлена
  2 - STATE_INGAME - Играем
  1 - STATE_MAINMENU - Главное меню
                                       ]]--

  arrows = 10
  arrows2 = 10
  lei = 0
  arb = 1
  tp = 1
  bird = 1
  kg = 1
  ki = 1
  to = 1
  tt = 4
  ty = 1
  tl = 1
  tu = 1
  dvig = 1
  dvig1 = 1
  c = 1
  vo = 1
  cami = 1
  chirik = 1
  chirik2 = 1
  statusdialog = 1
  statusdialog_1 = 1
  dialogplayer = 1
  score = 0
  timer = 0
  timer1 = 0
  timer2 = 0
  timer3 = 0
  timer4 = 0
  timer5 = 0
  timer6 = 0
  timer7 = 0
  timer8 = 0
  timer9 = 0
  timer10 = 0
  timer11 = 0
end

function loadButtons()
  -- SETUP BUTTONS (for menu)
   button = {} -- 1 плеер
   button.x = 640
   button.y = 300
   button.size = 40
   --
   button2 = {} -- 2 плеер
   button2.x = 640
   button2.y = 400
   button2.size = 40
   --
   button1 = {} --выход
   button1.x = 640
   button1.y = 500
   button1.size = 40

end

function updatesCore(dt)
  -- MAP UPDATES

  myWorld:update(dt)
  myWorld1:update(dt)
  myWorld2:update(dt)
  gameMap:update(dt)
  -- OTHERS UPDATES
  coinUpdate(dt)
  playerUpdate(dt)
  player_Update(dt)
  player_1Update(dt)
  player_1_1Update(dt)
  monstrUpdate(dt)
  player.animation:update(dt)
  player_1.animation:update(dt)
  if gameState == 2 then
  monstr.animation:update(dt)
  npc.animation:update(dt)
  npc1.animation:update(dt)
  npc_bird.animation:update(dt)
  animmoveUpdate(dt)
  animmove1Update(dt)
  animbirdUpdate(dt)
end
end

function TempCode()
 -- Здесь код, который будет удалён в релизе (Всякие кнопочки :D )
  if love.keyboard.isDown("f1") then
    main_sound:play()
  end
  if love.keyboard.isDown("f2") then
    main_sound:pause()
  end
  if love.keyboard.isDown("f3") then
    main_sound:stop()
  end
  if love.keyboard.isDown("space") then
      love.event.quit("restart")
  end
end

function OtherFunctions()
  function beginContact(a,b, coll)
    player.grounded = true
  end
  ----------------------------------------
  function endContact(a, b, coll)
      player.grounded = false
  end
  ----------------------------------------
  function beginContact1(a,b, coll)
    player_1.grounded1 = true
  end
  ----------------------------------------
  function endContact1(a, b, coll)
      player_1.grounded1 = false
  end
end
