-- Include Simple Tiled Implementation into project
local sti = require "sti"

function love.load()
    -- Load map file
    map = sti("/assets/DewclawTestMap.lua")
    playerimg = love.graphics.newImage("GlipMusicIcon.jpg")
    x=0; 
    y=0;
end

function love.update(dt)
    -- Update world
    local speed = 250

        -- Move player up
        if love.keyboard.isDown("w") or love.keyboard.isDown("up") then
            y = y - speed * dt
        end

        -- Move player down
        if love.keyboard.isDown("s") or love.keyboard.isDown("down") then
            y = y + speed * dt
        end

        -- Move player left
        if love.keyboard.isDown("a") or love.keyboard.isDown("left") then
            x = x - speed * dt
        end

        -- Move player right
        if love.keyboard.isDown("d") or love.keyboard.isDown("right") then
            x = x + speed * dt
        end
    
    
    map:update(dt)
end

function love.draw()
    -- Draw world
    map:draw(x,y);
    love.graphics.draw(playerimg, love.graphics.getWidth()/2, love.graphics.getHeight()/2);
end