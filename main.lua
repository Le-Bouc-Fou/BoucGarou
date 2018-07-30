require("code/utils")
require("code/mouse")
--require("code/map") seem useless
require("code/level")

function love.load()
    love.window.setTitle("Le Bouc Fou")
    utils.load()
    utils.setScreen(800,600,true)
    mouse.load()
--    map.load()
    level.start()--must be the last to load
end

function love.draw()
    level.draw()
end

function love.update(dt)
    level.update(dt)
end