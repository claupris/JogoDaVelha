
function fisica_load()
  world = love.physics.newWorld( 10, 10, "true" )
  function fplayer(world,x,y,comprimeto,altura)
    local a = {}
   a.body = love.physics.newBody(world, x,y,"static")
   a.shape = love.physics.newRectangleShape(comprimeto,altura)
   a.fixture = love.physics.newFixture(a.body,a.shape,10)
   a.fixture:setCategory(1)

   return a
  end
end

function bol()
  local b={}

  b.body = love.physics.newBody( world, 0, 0, "dynamic" )
  b.shape=love.physics.newCircleShape(30)
  b.fixture=love.physics.newFixture(b.body,b.shape,0,1)
  b.fixture:setCategory(1)
  return b
end


-- function touch(rectangle, x , y, w, h, mseX, mseY)
--   if (mseX <= x and mseX <= y and mseY <= x and mseY <= y and mseX <= w and mseY <= w and mseX <= h and mseY <= h) and love.mouse.isDown("1") then
--     mseX, mseY = love.graphics.circle("line", x, y, 30)
--   end
-- end

-- function love.mousepressed(x, y, button, istouch)
--   if button == 1 then 
--     love.graphics.print("x", x, y)
--   end
-- end

-- retangulos

--love.physics.newRectangleShape( x, y, width, height, angle )