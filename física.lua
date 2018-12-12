-- fecha o jogo
function close()
  if love.keyboard.isDown ("escape")  then
    love.window.close();
    os.exit(0);
  end
end

function movePlayer()
  if (love.keyboard.isDown ("d") or love.keyboard.isDown ("right"))  then
    x = x + (speed * dt);
  end
  if (love.keyboard.isDown ("a") or love.keyboard.isDown ("left"))  then
    x = x + (speed * dt);
  end
  if (love.keyboard.isDown ("w") or love.keyboard.isDown ("up"))  then
      y = y + (speed * dt);
  end
  if (love.keyboard.isDown ("s") or love.keyboard.isDown ("down"))  then
    y = y + (speed * dt);
  end
    
end