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
  love.mousepressed( mX, mY, 1, istouch)
  mapa_update()
  --movePlayer()
end

-- desenha na tela
function love.draw()
  mapa_draw()
  -- player(mX, mY, recX, recY, touch)
 -- love.physics.newRectangleShape( x, y, width, height, angle )
end




