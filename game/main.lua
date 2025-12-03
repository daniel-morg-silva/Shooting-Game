local Player = require "classes/player"
local Enemy = require "classes/enemy"

function love.load()
    player = Player()
    enemy = Enemy()
    listOfBullets = {}
end

function love.update(dt)
    player:update(dt)
    enemy:update(dt)

    for i, v in ipairs(listOfBullets) do
        v:update(dt)

        if (v.y + v.height >= enemy.y) and (v.x > enemy.x and v.x < enemy.x + enemy.width) then
            enemy.speed = enemy.speed + 15
            table.remove(listOfBullets, i)
        end
    end
end

function love.draw()
    player:draw()
    enemy:draw()
    
    for i, v in ipairs(listOfBullets) do
        v:draw()
    end
end

function love.keypressed(key)
    player:shoot(key)
end