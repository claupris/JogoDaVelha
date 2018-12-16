
--require "mapa"

function menu_load()   
  menu = love.graphics.newImage("imagens/menupriscila.png")
  texto = love.graphics.newImage("imagens/menu.png")
  help = love.graphics.newImage("imagens/btnHelp.png")
  play = love.graphics.newImage("imagens/botaoplay.png")
end

function menu_draw()
  if menuInc == 1 then
    love.graphics.draw(menu, 0, 0)
    love.graphics.draw(help, 330, 490)
    love.graphics.draw(play, 490, 490)
  elseif menuInc == 2 then  
    love.graphics.draw(texto, 90, 10)
  end
end

function menu_mousereleased(mX, mY)
  if mX ~= nil and mY ~= nil and not stop then

    if (mX>=328 and mX<=482) and (mY>=488 and mY<=642) then
      menuInc = 2
    elseif (mX>=488 and mX<=642) and (mY>=488 and mY<=642) then
      menuInc = 3
    end

  end  
end