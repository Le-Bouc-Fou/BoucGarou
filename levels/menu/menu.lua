level= {
    menu = {
        sprite = {},
        timer = 0
    }
}

function level.menu.load()
    level.menu.sprite.fond = love.graphics.newImage("levels/menu/sprite/fond.png")
    level.menu.sprite.title = love.graphics.newImage("levels/menu/sprite/nom_du_jeu_y.png")
    level.menu.sprite.newgame = love.graphics.newImage("levels/menu/sprite/nouvelle_partie_y.png")
    level.menu.sprite.newgame_h = love.graphics.newImage("levels/menu/sprite/nouvelle_partie_b.png")
    level.menu.sprite.loadgame = love.graphics.newImage("levels/menu/sprite/charger_partie_y.png")
    level.menu.sprite.loadgame_h = love.graphics.newImage("levels/menu/sprite/charger_partie_b.png")
    level.menu.sprite.option = love.graphics.newImage("levels/menu/sprite/options_y.png")
    level.menu.sprite.option_h = love.graphics.newImage("levels/menu/sprite/options_b.png")
    level.menu.sprite.quit = love.graphics.newImage("levels/menu/sprite/quitter_y.png")
    level.menu.sprite.quit_h = love.graphics.newImage("levels/menu/sprite/quitter_b.png")
    mouse.generate({
        { name = "newgame", x = 50, y = 35, img = level.menu.sprite.newgame },
        { name = "loadgame", x = 50, y = 50, img = level.menu.sprite.loadgame },
        { name = "option", x = 50, y = 65, img = level.menu.sprite.option },
        { name = "quit", x = 50, y = 80, img = level.menu.sprite.quit }
    })
end

function level.menu.update(dt)

end

function level.menu.draw()
    utils.display(level.menu.sprite.fond, 50, 50)
    utils.display(level.menu.sprite.title, 50, 10)
    if mouse.hover ~= "newgame" then
        utils.display(level.menu.sprite.newgame, 50, 35)
    else
        utils.display(level.menu.sprite.newgame_h, 50, 35)
    end
    if mouse.hover ~= "loadgame" then
        utils.display(level.menu.sprite.loadgame, 50, 50)
    else
        utils.display(level.menu.sprite.loadgame_h, 50, 50)
    end
    if mouse.hover ~= "option" then
        utils.display(level.menu.sprite.option, 50, 65)
    else
        utils.display(level.menu.sprite.option_h, 50, 65)
    end
    if mouse.hover ~= "quit" then
        utils.display(level.menu.sprite.quit, 50, 80)
    else
        utils.display(level.menu.sprite.quit_h, 50, 80)
    end
end

function level.menu.finish()
    level.menu.sprite = {}
end

return {
    load = level.menu.load,
    update = level.menu.update,
    draw = level.menu.draw
}