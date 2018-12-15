
function menu_load()  
  text = love.graphics.newImage("imagens/text.png")
  --menu = love.graphics.newImage("imagens/menu.png")
end

function menu_draw()
  love.graphics.draw(text, 10, 0)
  --love.graphics.draw(menu, 50, 50)
end