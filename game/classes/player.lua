local Object = require "lib/classic"
local Player = Object:extend()
local Bullet = require "classes/bullet"

local window_width = love.graphics.getWidth()

function Player:new()
    self.image = love.graphics.newImage("media/panda.png")
    
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    self.x = window_width / 2
    self.y = 100

    self.speed = 500
end

function Player:update(dt)
    if love.keyboard.isDown("a") then
        self.x = self.x - self.speed * dt
    elseif love.keyboard.isDown("d") then
        self.x = self.x + self.speed * dt
    end

    -- If player is too far left
    if self.x < 0 then
        self.x = 0
    -- If player is too far right
    elseif self.x + self.width > window_width then
        self.x = window_width - self.width
    end
end

function Player:draw()
    love.graphics.draw(self.image, self.x, self.y)
end

function Player:shoot(key)
    if key == "space" then
        table.insert(listOfBullets, Bullet(self.x, self.y))
    end
end

return Player
