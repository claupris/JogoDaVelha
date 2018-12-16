math.randomseed(os.time())

require "player"
require "mapa"
require "menu"

-- chama apenas uma vez
function love.load()
  
  mapa_load()
  
end

function love.mousereleased()
  
  mapa_mousereleased(mX, mY, 1)  
  menu_mousereleased(mX, mY)
  
end

function love.mousemoved()
  
  mouseMove()
  
end

-- atualiza
function love.update(dt)
  backward()
  start()
  close()
  mapa_update()
  restart()
  
end

-- desenha na tela
function love.draw()
  
  mapa_draw()
  sound_draw()
  player_draw()
  
end




