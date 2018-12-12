require "física"
-- fecha o jogo
function close()
  if love.keyboard.isDown ("escape")  then
    love.window.close();
    os.exit(0);
  end
end

--jogada = 1

-- function mapa_load()
--   font1 = love.graphics.newFont("fontbases/1543Humane_jenson_bold.TTF",72)
-- end
function mapa_load()
  mapa = {}
  jogada = 1
  pX = love.graphics.newImage("imagens/x.png")
  pO = love.graphics.newImage("imagens/o.png")

end

function mapa_update()
  if love.mouse.isDown("1") then
    mX = love.mouse.getX( )
    mY = love.mouse.getY( )
  end
end


function mapa_draw()
  -- desenha os retangulos
  love.graphics.setColor( 255, 255, 255);
  -- primeira linha
  rectangle1 = love.graphics.rectangle("line", 120, 100, 175, 125);
  rectangle2 = love.graphics.rectangle("line", 300, 100, 175, 125);
  rectangle3 = love.graphics.rectangle("line", 480, 100, 175, 125);
  -- segunda linha 
  rectangle4 = love.graphics.rectangle("line", 120, 230, 175, 125);
  rectangle5 = love.graphics.rectangle("line", 300, 230, 175, 125);
  rectangle6 = love.graphics.rectangle("line", 480, 230, 175, 125);
  --terceira linha
  rectangle7 = love.graphics.rectangle("line", 120, 360, 175, 125);
  rectangle8 = love.graphics.rectangle("line", 300, 360, 175, 125);
  rectangle9 = love.graphics.rectangle("line", 480, 360, 175, 125);

  mapa[1] = {rectangle1,rectangle2,rectangle3}
  mapa[2] = {rectangle4,rectangle5,rectangle6}
  mapa[3] = {rectangle7,rectangle8,rectangle9}
print(mX)
  
end

function love.mousepressed( mX, mY, button, istouch)
  love.graphics.setColor( 255, 0, 0);
  
  if button == 1 and (mX >= 120 and mX <= 295) and (mY >= 100 and mY <= 225) and jogada%2 == 1 then
    love.graphics.draw(pX, 130, 110)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 300 and mX <= 475) and (mY >= 100 and mY <= 225) and jogada%2 == 1 then
    love.graphics.draw(pX, 310, 110)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 480 and mX <= 655) and (mY >= 100 and mY <= 225) and jogada%2 == 1 then
    love.graphics.draw(pX, 490, 110)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 120 and mX <= 295) and (mY >= 230 and mY <= 355) and jogada%2 == 1 then
    love.graphics.draw(pX, 130, 240)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 300 and mX <= 475) and (mY >= 230 and mY <= 355) and jogada%2 == 1 then
    love.graphics.draw(pX, 310, 240)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 480 and mX <= 655) and (mY >= 230 and mY <= 355) and jogada%2 == 1 then
    love.graphics.draw(pX, 490, 240)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 120 and mX <= 295) and (mY >= 360 and mY <= 485) and jogada%2 == 1 then
    love.graphics.draw(pX, 130, 370)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 300 and mX <= 475) and (mY >= 360 and mY <= 485) and jogada%2 == 1 then
    love.graphics.draw(pX, 310, 370)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 480 and mX <= 655) and (mY >= 360 and mY <= 485) and jogada%2 == 1 then
    love.graphics.draw(pX, 490, 370)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 120 and mX <= 295) and (mY >= 100 and mY <= 225) and jogada%2 == 0 then
    love.graphics.draw(pY, 130, 110)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 300 and mX <= 475) and (mY >= 100 and mY <= 225) and jogada%2 == 0 then
    love.graphics.draw(pY, 310, 110)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 480 and mX <= 655) and (mY >= 100 and mY <= 225) and jogada%2 == 0 then
    love.graphics.draw(pY, 490, 110)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 120 and mX <= 295) and (mY >= 230 and mY <= 355) and jogada%2 == 0 then
    love.graphics.draw(pY, 130, 240)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 300 and mX <= 475) and (mY >= 230 and mY <= 355) and jogada%2 == 0 then
    love.graphics.draw(pY, 310, 240)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 480 and mX <= 655) and (mY >= 230 and mY <= 355) and jogada%2 == 0 then
    love.graphics.draw(pY, 490, 240)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 120 and mX <= 295) and (mY >= 360 and mY <= 485) and jogada%2 == 0 then
    love.graphics.draw(pY, 130, 370)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 300 and mX <= 475) and (mY >= 360 and mY <= 485) and jogada%2 == 0 then
    love.graphics.draw(pY, 310, 370)
    jogada = jogada + 1
  elseif button == 1 and (mX >= 480 and mX <= 655) and (mY >= 360 and y <= 485) and jogada%2 == 0 then
    love.graphics.draw(pY, 490, 370)
    jogada = jogada + 1
  end
  
end

  
  -- recX, recY =  120, 100
  

  --retangulos
  --ret = {rectangle1, rectangle2, rectangle3, rectangle4, rectangle5, rectangle6, rectangle7, rectangle8, rectangle9}
  --[[ função de toque
  function mouse_update()
    if mouse_x == ret[1] and mouse_y == ret[1] then
      print("cansei")
    end
  end
   
  -- posicão dos players na tela
  -- love.graphics.setColor( 255, 0, 255);
  -- recPlayer1 = love.graphics.rectangle("line", 1, 1, 30, 30);
  -- love.graphics.setColor( 0, 0, 255);
  -- recPlayer2 = love.graphics.rectangle("line", 769, 1, 30, 30);


  -- verifica a posição do mouse 
  -- mouse = love.mouse.setVisible(true)
  -- mouse_x, mouse_y = love.mouse.getPosition( )


  --print("mouse_x  ".. mouse_x)
  --print("mouse_y  ".. mouse_y)
  --print("-------------------------------")
  
   if love.mouse.isDown("l") then
    pecas[1]
    pecas[2]
  end

  function mapa_update()
    if collision(mouse_x, mouse_y, 120, 100, mouse_x, mouse_y, 
  end
  ]]--


--[[
function love.mousepressed( x, y, button, istouch)
  for i = 1, 9 do
    if button == 1 and (x >= 120 and x <= 295) and (y >= 100 and y <= 225) then
      if i%2 == 1 then
        love.graphics.newImage("X", 130, 110)
      else 
        love.graphics.newImage("O", 130, 110)
      end
    elseif button == 1 and (x >= 300 and x <= 475) and (y >= 100 and y <= 225) then
      if i%2 == 1 then
        love.graphics.newImage("X", 310, 110)
      else 
        love.graphics.newImage("O", 310, 110)
      end
    elseif button == 1 and (x >= 480 and x <= 655) and (y >= 100 and y <= 225) then
      if i%2 == 1 then
        love.graphics.newImage("X", 490, 110)
      else 
        love.graphics.newImage("O", 490, 110)
      end
    elseif button == 1 and (x >= 120 and x <= 295) and (y >= 230 and y <= 355) then
      if i%2 == 1 then
        love.graphics.newImage("X", 130, 240)
      else 
        love.graphics.newImage("O", 130, 240)
      end
    elseif button == 1 and (x >= 300 and x <= 475) and (y >= 230 and y <= 355) then
      if i%2 == 1 then
        love.graphics.newImage("X", 310, 240)
      else 
        love.graphics.newImage("O", 310, 240)
      end
    elseif button == 1 and (x >= 480 and x <= 655) and (y >= 230 and y <= 355) then
      if i%2 == 1 then
        love.graphics.newImage("X", 490, 240)
      else 
        love.graphics.newImage("O", 490, 240)
      end
    elseif button == 1 and (x >= 120 and x <= 295) and (y >= 360 and y <= 485) then
      if i%2 == 1 then
        love.graphics.newImage("X", 130, 370)
      else 
        love.graphics.newImage("O", 130, 370)
      end
    elseif button == 1 and (x >= 300 and x <= 475) and (y >= 360 and y <= 485) then
      if i%2 == 1 then
        love.graphics.newImage("X", 310, 370)
      else 
        love.graphics.newImage("O", 310, 370)
      end
    elseif button == 1 and (x >= 480 and x <= 655) and (y >= 360 and y <= 485) then
      if i%2 == 1 then
        love.graphics.newImage("X", 490, 370)
      else 
        love.graphics.newImage("O", 490, 370)
      end
    end
  end
end
]]
