require "player"
require "menu"


-- fecha o jogo
function close()
  if love.keyboard.isDown ("escape")  then
    love.window.close();
    os.exit(0);
  end
end

-- reinicia o jogo
function restart()
  if love.keyboard.isDown ("space")  then
    mapa_load();
  end
end

--inicia o jogo
function start()
  if menuInc and not love.keyboard.isDown ("return")  then 
    love.graphics.draw(menu, 50, 50)
  elseif love.keyboard.isDown ("return") then
    mapa_draw()
  end
end

-- carrega
function mapa_load()
  menu_load()
  imagens = {}  
  posicoes = {}
  
  menuInc = true

  imagens[1] = {nil, nil, nil}
  imagens[2] = {nil, nil, nil}
  imagens[3] = {nil, nil, nil}

  --        x   y
  ponto = {}

  --              p1   p2   p3
  posicoes[1] = {nil, nil, nil}
  posicoes[2] = {nil, nil, nil}
  posicoes[3] = {nil, nil, nil}

  jogada = 1
  love.graphics.setBackgroundColor(0, 0, 1)
  imgX = love.graphics.newImage("imagens/x0.png")
  imgO = love.graphics.newImage("imagens/o1.png")  

  player_load()
  cusorX = love.mouse.newCursor( "imagens/x0.png", hotx, hoty )
  cusorO = love.mouse.newCursor( "imagens/o1.png", hotx, hoty )

end

-- atualiza
function mapa_update()
  if love.mouse.isDown("1") then
    love.audio.play(jogadaSound)
    mX = love.mouse.getX()
    mY = love.mouse.getY()
  end
end

-- desenha
function mapa_draw()
  
  menu_draw()
  
  -- desenha os retangulos
  if stop then 
    love.graphics.setColor(255, 255, 255);
  else
    love.graphics.setColor( 255, 255, 255);
  end
  
  
    -- primeira linha
    rectangle1 = love.graphics.rectangle("fill", 120, 100, 175, 125);
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
    
  -- desenha o X e a O no local correto
  for i = 1, 3 do
    for j = 1, 3 do

      if imagens[i][j]== nil and posicoes[i][j] ~= nil and jogada%2 == 0 then
        imagens[i][j] = imgO;
        player_update(i, j, 0)
      elseif imagens[i][j]== nil and  posicoes[i][j] ~= nil and jogada%2 == 1 then
        imagens[i][j] = imgX;
        player_update(i, j, 1)
      end

      if imagens[i][j] ~= nil and posicoes[i][j] ~= nil then        
        love.graphics.draw(imagens[i][j], posicoes[i][j][1], posicoes[i][j][2])
      end

    end
  end

-- condição de parada
  if not stop and jogada > 9 then
    stop = true
    print('stop', jogada)
  end

end

-- função que identifica a posição quem que o mouse deve desenhar
function mapa_mousereleased(mX, mY, button)
  love.graphics.setColor( 255, 0, 0);
  if mX ~= nil and mY ~= nil and button ~= nil and not stop then
    if button == 1 and (mX >= 120 and mX <= 295) and (mY >= 100 and mY <= 225) and posicoes[1][1] == nil then
      ponto = {150 ,110}  -- x, y
      posicoes[1][1] = ponto; -- guarda a coordenada
      jogada = jogada + 1
    elseif button == 1 and (mX >= 300 and mX <= 475) and (mY >= 100 and mY <= 225) and posicoes[1][2] == nil then
      ponto = {330,110}
      posicoes[1][2] = ponto;
      jogada = jogada + 1
    elseif button == 1 and (mX >= 480 and mX <= 655) and (mY >= 100 and mY <= 225) and posicoes[1][3] == nil then
      ponto = {510,110}
      posicoes[1][3] = ponto;
      jogada = jogada + 1
    elseif button == 1 and (mX >= 120 and mX <= 295) and (mY >= 230 and mY <= 355) and posicoes[2][1] == nil then
      ponto = {150,240}
      posicoes[2][1] = ponto;
      jogada = jogada + 1
    elseif button == 1 and (mX >= 300 and mX <= 475) and (mY >= 230 and mY <= 355) and posicoes[2][2] == nil then
      ponto = {330,240}
      posicoes[2][2] = ponto;
      jogada = jogada + 1
    elseif button == 1 and (mX >= 480 and mX <= 655) and (mY >= 230 and mY <= 355) and posicoes[2][3] == nil then
      ponto = {510,240}
      posicoes[2][3] = ponto;
      jogada = jogada + 1
    elseif button == 1 and (mX >= 120 and mX <= 295) and (mY >= 360 and mY <= 485) and posicoes[3][1] == nil then
      ponto = {150,370}
      posicoes[3][1] = ponto;
      jogada = jogada + 1
    elseif button == 1 and (mX >= 300 and mX <= 475) and (mY >= 360 and mY <= 485) and posicoes[3][2] == nil then
      ponto = {330, 370}
      posicoes[3][2] = ponto;
      jogada = jogada + 1
    elseif button == 1 and (mX >= 480 and mX <= 655) and (mY >= 360 and mY <= 485) and posicoes[3][3] == nil then
      ponto = {510,370}
      posicoes[3][3] = ponto;
      jogada = jogada + 1
    end    
  end
end