function love.load()
  
  j1 = {
    x = 100,
    y = 100,
    tamanho = 50,
    velocidade = 200,
  }

  npc = {
    x = 300,
    y = 300,
    tamanho = 50,
    velocidade = 200,
  }


end


function love.update(dt)

if love.keyboard.isDown("up") or love.keyboard.isDown("w") then

    j1.y = j1.y - j1.velocidade * dt
 end 
     
if love.keyboard.isDown("down") or love.keyboard.isDown("s") then

    j1.y = j1.y + j1.velocidade * dt
 end

if love.keyboard.isDown("left") or love.keyboard.isDown("a") then

    j1.x = j1.x - j1.velocidade * dt
 end

 if love.keyboard.isDown("right") or love.keyboard.isDown("d") then

    j1.x = j1.x + j1.velocidade * dt
 end


 -- movimento do npc
 if j1.x < npc.x then
    npc.x = npc.x - npc.velocidade * dt 
 end

 if j1.x > npc.x then
    npc.x = npc.x + npc.velocidade *dt
 end


end -- fim da funcao update 

function love.draw()
   
   love.graphics.rectangle("fill", j1.x, j1.y, j1.tamanho, j1.tamanho)
   
   
   love.graphics.setColor(1, 0.3, 0.3)
   love.graphics.rectangle("fill", npc.x, npc.y, npc.tamanho, npc.tamanho)


   love.graphics.setColor(1, 1, 1)
    
end