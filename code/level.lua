level = {
    state = "none"
}


-- hide it if you can
    require("levels/menu/menu")
-- end of eye attack :)


function level.start()
    level.state = "menu"
    level.menu.load()
end

function level.load(name)
    _G["level." .. level.state .. ".finish"]()
    level.state = name
    _G["level." .. level.state .. ".load"]()
end

function level.update(dt)
    _G["level." .. level.state .. ".update"](dt)
end

function level.draw()
    _G["level." .. level.state .. ".draw"]()
end