--[[

      BUILD #041018_0020
      BY NERDY
      + Добавлены локальные переменные для облегчения написания, Example: lg = love.graphics (Так ведь проще :Р)
      + Добавлен файл resources.lua
      + Почти всё из load перенесено в resources и  собрано в функции
      - Состояния игры НЕизменены (См. инфо в resources.lua , строка 97)
      + Добавлено хранилище цветов Example: COLORS.ИМЯЦВЕТА (Находится в resources.lua в таблице COLORS)
      + Удалены старые методы, функции и лишние комментарии
      + Переменные теперь в функции loadVariables()
      + Кнопки меню в loadButtons()
      + Размер кода уменьшен на 100+ строк
      + Загрузка разгружена на 90% (Да, прям таки русиш)
      + Функции граунда теперь спят в подвале resources.lua в функции OtherFunctions()
      + Изменен фон и откорректирован
      + Меню перенесено в свой класс-файл
      + Весь код разбит на блоки (Теперь главный класс - game.lua) P.S Я оставил подсказки, какие функции что значат, дабы можно было понять :)
      + Изменена картинка меню
      + Защита от воровства кода (Простенькая, но всё же.)
      ---
      F.A.Q
      1. Что за слова со скобкой?
      -> Это функции (Они помогают сократить код до 1 строчки)
      2. А как менять что-либо в них?
      -> Просто. Найти тот файл, где находится эта функция и редактировать код внутри неё :)
      3. Я хочу тоже создать такую, а как?
      -> Ещё проще, создаём функцию:

      function ИМЯФУНКЦИИ()
          -- Здесь живёт код :)
      end

      и так, справились...
      Далее подключаем в нужном месте (Где должно работать то, что мы написали внутри функции)

      ИМЯФУНКЦИИ()

      И всё. Теперь код из этой функции будет выполнен в этом месте (И выглядит аккуратно.)
      P.S по такому принципу выполнен наш main.lua
      ---
      Фуух...Вроде всё на сегодня :) (Кофе закончился)

]]--
require('game')
require("resources")
function love.load()
loadGame()
end
function love.update(dt)
updateGame(dt)
end
function love.draw()
drawGame()
end
