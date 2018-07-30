mouse = {
    x = 0,
    y = 0,
    hover = "",
    calques = {},
    listimg = {}
}

function mouse.load()
    utils.sizeX, utils.sizeY = love.graphics.getPixelDimensions()
    print(utils.sizeX .. " x " .. utils.sizeY)
end

function love.mousemoved(x, y, nbx, nby, isT)
    mouse.x = x
    mouse.y = y
    local temp = ""
    for i,v in ipairs(mouse.calques) do
        if (mouse.x >= v.x1 and mouse.x <= v.x2) and (mouse.y >= v.y1 and mouse.y <= v.y2) then
            temp = v.name
        end
    end
    mouse.hover = temp
end

function mouse.setCalques(calques)
    mouse.calques = calques
    local temp = ""
    for i,v in ipairs(mouse.calques) do
        if (mouse.x >= v.x1 and mouse.x <= v.x2) and (mouse.y >= v.y1 and mouse.y <= v.y2) then
            temp = v.name
        end
    end
    mouse.hover = temp
end

function love.mousepressed(x, y, button, istouch, presses)
    if button == 1 then
        level.click(mouse.hover)
    elseif button == 2 then 
        level.rgclick(mouse.hover)
    elseif button == 3 then 
        level.midclick(mouse.hover)
    end
end

function mouse.generate(listimg)
    mouse.listimg = listimg
    local calques = {}
    for i,v in ipairs(listimg) do
        calques[i] = { name = v.name,
        x1 = (utils.PERCENTx(v.x) - (v.img:getWidth()/2) * utils.RAPPORTx(1, 1920)),
        y1 = (utils.PERCENTy(v.y) - (v.img:getHeight()/2) * utils.RAPPORTy(1, 1080)),
        x2 = (utils.PERCENTx(v.x) + (v.img:getWidth()/2) * utils.RAPPORTx(1, 1920)),
        y2 = (utils.PERCENTy(v.y) + (v.img:getHeight()/2) * utils.RAPPORTy(1, 1080)) }
    end
    mouse.calques = calques
    local temp = ""
    for i,v in ipairs(mouse.calques) do
        if (mouse.x >= v.x1 and mouse.x <= v.x2) and (mouse.y >= v.y1 and mouse.y <= v.y2) then
            temp = v.name
        end
    end
    mouse.hover = temp
end