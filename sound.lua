function sound_load()
  
  aplausos = love.audio.newSource( "sounds/aplausos.mp3", "static" )
  somFundo = love.audio.newSource( "sounds/fundo.mp3", "static" )
  jogadaSound = love.audio.newSource( "sounds/jogada.wav", "static" )
  gameOver = love.audio.newSource( "sounds/gameOver.wav", "static" )
  
  love.audio.stop(aplausos)
  love.audio.stop(jogadaSound)
  love.audio.stop(gameOver)
 
end

function sound_draw()
  love.audio.play(somFundo)
end