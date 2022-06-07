require("player")
require("ball")
require("ai")


function love.load()

    Player:load()
    Ball:load() 
    AI:load()

    Score = {player = 0, ai = 0}



end

function love.update(dt)

    Player:update(dt)
    Ball:update(dt)
    AI:update(dt)

end


function love.draw()

    Player:draw()
    Ball:draw()
    AI:draw()

    love.graphics.print("Player: "..Score.player, 120, 50, 0, 2, 2)
    love.graphics.print("AI: "..Score.ai, 1100, 50, 0, 2, 2)
    
    if love.keyboard.isDown('k') then
        love.event.quit("restart")
    end

end


function checkCollision(a, b)

    if a.x + a.width > b.x and a.x < b.x + b.width and a.y + a.height > b.y and a.y < b.y +b.height then
        return true
    else
        return false
    end

end