local Object = require "lib/classic"
local Enemy = Object:extend()
local direction = true

function Enemy:new()
    self.image = love.graphics.newImage("media/snake.png")

    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    self.x = 325
    self.y = 450

    self.speed = 100
end

function Enemy:update(dt)
    local window_width = love.graphics.getWidth()

    if self.x < 0 then
        direction = true
    elseif self.x + self.width >= window_width then
        direction = false
    end

    if direction then
        self.x = self.x + self.speed * dt
    elseif not direction then
        self.x = self.x - self.speed * dt
    end
end

function Enemy:draw()
    love.graphics.draw(self.image, self.x, self.y)
end

return Enemy