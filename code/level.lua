level = {
    state = "none"
}


-- hide it if you can
    level.menu = require("levels/menu/menu")
-- end of eye attack :)


function level.start()
    level.state = "menu"
    level.menu.load()
end

function level.load(name)
    level[level.state].finish()
    level.state = name
    level[level.state].load()
end

function level.update(dt)
    level[level.state].update(dt)
end

function level.draw()
    level[level.state].draw()
end

function level.click(hover)
    level[level.state].click = level[level.state].click or function(x)end
    level[level.state].click(hover)
end

function level.rgclick(hover)
    level[level.state].rgclick = level[level.state].rgclick or function(x)end
    level[level.state].rgclick(hover)
end

function level.midclick(hover)
    level[level.state].midclick = level[level.state].midclick or function(x)end
    level[level.state].midclick(hover)
end