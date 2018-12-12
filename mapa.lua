require "física"
function mapa_load()
  pecas = {}
  pecas[1] = love.graphics.newImage("imagens/x.png")
  pecas[2] = love.graphics.newImage("imagens/o.png")
end
function mapa_draw()
 
  -- desenha os retangulos
  love.graphics.setColor( 255, 255, 255);
  -- primeira linha
  rectangle = love.graphics.rectangle("fill", 120, 100, 175, 125);
  rectangle2 = love.graphics.rectangle("fill", 300, 100, 175, 125);
  rectangle3 = love.graphics.rectangle("fill", 480, 100, 175, 125);
  -- segunda linha 
  rectangle4 = love.graphics.rectangle("fill", 120, 230, 175, 125);
  rectangle5 = love.graphics.rectangle("fill", 300, 230, 175, 125);
  rectangle6 = love.graphics.rectangle("fill", 480, 230, 175, 125);
  --terceira linha
  rectangle7 = love.graphics.rectangle("fill", 120, 360, 175, 125);
  rectangle8 = love.graphics.rectangle("fill", 300, 360, 175, 125);
  rectangle9 = love.graphics.rectangle("fill", 480, 360, 175, 125);

  --posicão dos players na tela
  love.graphics.setColor( 255, 0, 255);
  recPlayer1 = love.graphics.rectangle("fill", 1, 1, 30, 30);
  love.graphics.setColor( 0, 0, 255);
  recPlayer2 = love.graphics.rectangle("fill", 769, 1, 30, 30);


  -- verifica a posição do mouse 
  mouse = love.mouse.setVisible(true)
  mouse_x, mouse_y = love.mouse.getPosition( )
  --print("mouse_x  ".. mouse_x)
  --print("mouse_y  ".. mouse_y)
  --print("-------------------------------")
  
  --[[ if love.mouse.isDown("l") then
    pecas[1]
    pecas[2]
  end
  ]]--
  
end
--[[
function mapa_update()
  if collision(mouse_x, mouse_y, 120, 100, mouse_x, mouse_y, 
end
]]