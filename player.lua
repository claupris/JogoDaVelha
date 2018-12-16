require "sound"

-- carrega
function player_load()
  
  sound_update()

  sound_load()

  checaVitoria = {};

  checaVitoria[1] = {nill,nill,nill};
  checaVitoria[2] = {nill,nill,nill};
  checaVitoria[3] = {nill,nill,nill};

  printX = nil;
  printO = nil;
  stop = false;

  velha = love.graphics.newImage("imagens/velha.png") 
  venceX = love.graphics.newImage("imagens/winner-x.png") 
  venceO = love.graphics.newImage("imagens/winner-o.png")
  


end

-- atualiza a imagem e armazena a imagem correspondende a jogada
function player_update(x, y, v)
  checaVitoria[x][y] = v

end

<<<<<<< HEAD
function setCursor()
  cursor = love.mouse.getSystemCursor("arrow")
  love.mouse.setCursor(cursor)
end

=======
>>>>>>> e47b17fd1bac4517c4f441c7560b1d4964c30aed
-- carrega
function player_draw()
  --
  sound_draw()

  checaLinha() 
  checaColuna()
  checaDiagonal1() 
  checaDiagonal2()

-- identifica o vencedor
  if printX ~= nil and printX then    
    love.graphics.draw(venceX, 100, 90)
    love.audio.stop(somFundo);
    love.audio.play(aplausos);
  elseif printO ~= nil and printO then    
    love.graphics.draw(venceO, 100, 90)
    love.audio.stop(somFundo);
    love.audio.play(aplausos);    
  elseif stop and  printX == nil and  printO == nil then
    love.graphics.draw(velha, 100, 90)
    love.audio.stop(somFundo);
    love.audio.play(gameOver);
    setCursor()
  end

end

-- condições de vitória
function checaLinha()
  for i = 1, 3 do
    if checaVitoria[i][1] ~= nill and checaVitoria[i][2] ~= nill and checaVitoria[i][3] ~= nill then
      if checaVitoria[i][1] == 1 and checaVitoria[i][2] == 1 and checaVitoria[i][3] == 1 then
        --print("vitória do x"); 
        stop = true;
        printX = true;
        setCursor()
      elseif checaVitoria[i][1] == 0 and checaVitoria[i][2] == 0 and checaVitoria[i][3] == 0 then
        --print("vitória da O");    
        stop = true;
        printO = true;
        setCursor()
      end
    end
  end
end

function checaColuna()
  for i = 1, 3 do
    if checaVitoria[1][i] ~= nill and checaVitoria[2][i] ~= nill and checaVitoria[3][i] ~= nill then
      if checaVitoria[1][i] == 1 and checaVitoria[2][i] == 1 and checaVitoria[3][i] == 1 then
        --print("vitória do x");    
        stop = true;        
        printX = true;
        setCursor()
      elseif checaVitoria[1][i] == 0 and checaVitoria[2][i] == 0 and checaVitoria[3][i] == 0 then
        --print("vitória do O");    
        stop = true;
        printO = true;        
        setCursor()
      end
    end
  end
end

function checaDiagonal1()
  if checaVitoria[1][1] ~= nill and checaVitoria[2][2] ~= nill and checaVitoria[3][3] ~= nill then
    if checaVitoria[1][1] == 1 and checaVitoria[2][2] == 1 and checaVitoria[3][3] == 1 then
      --print("vitória do x");    
      stop = true;
      printX = true;
      setCursor()
    elseif checaVitoria[1][1] == 0 and checaVitoria[2][2] == 0 and checaVitoria[3][3] == 0 then
      --print("vitória do O");    
      stop = true;
      printO = true;
      setCursor()
    end
  end
end

function checaDiagonal2()
  if checaVitoria[1][3] ~= nill and checaVitoria[2][2] ~= nill and checaVitoria[3][1] ~= nill then
    if checaVitoria[1][3] == 1 and checaVitoria[2][2] == 1 and checaVitoria[3][1] == 1 then
      --print("vitória do x");    
      stop = true;
      printX = true;
      setCursor()
    elseif checaVitoria[1][3] == 0 and checaVitoria[2][2] == 0 and checaVitoria[3][1] == 0 then
      --print("vitória do O");    
      stop = true;
      printO = true;
      setCursor()
    end
  end
end