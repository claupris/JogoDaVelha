math.randomseed(os.time())

require "player"
require "mapa"
require "física"
-- chama apenas uma vez
function love.load()
  mapa_load()

end

-- atualiza
function love.update(dt)
  close()
  movePlayer()
end

-- desenha na tela
function love.draw()
  mapa_draw()
  player()
end