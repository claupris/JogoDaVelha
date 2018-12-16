function sound_load()

  jogadaSound = love.audio.newSource( "sounds/jogada.wav", "static" )
  aplausos = love.audio.newSource( "sounds/aplausos.mp3", "static" )
  somFundo = love.audio.newSource( "sounds/fundo.mp3", "static" )
  gameOver = love.audio.newSource( "sounds/gameOver.wav", "static" )

end

function sound_update() 

  if somFundo ~= nil and aplausos ~= nil and aplausos ~= nil and jogadaSound ~= nil and gameOver ~= nil then
    love.audio.stop(somFundo)
    love.audio.stop(aplausos)
    love.audio.stop(jogadaSound)
    love.audio.stop(gameOver)
  end

end

function sound_draw()
  if somFundo ~= nil then
    love.audio.play(somFundo)
  end
end