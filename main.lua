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
end
-- atualiza
function love.update(dt)
  close()
  mapa_update()
  restart()
end

-- desenha na tela
function love.draw()
  mapa_draw()
  player_draw()

end




