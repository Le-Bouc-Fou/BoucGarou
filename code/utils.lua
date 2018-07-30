utils = {
    sizeX = 0,
    sizeY = 0
}

function utils.load()
    utils.sizeX, utils.sizeY = love.graphics.getPixelDimensions()
    print(utils.sizeX .. " x " .. utils.sizeY)
end

function love.resize(w, h)
    utils.sizeX = w
    utils.sizeY = h
end

function utils.setScreen(w,h,fs)
    utils.sizeX = w
    utils.sizeY = h
    if fs == true then
        utils.sizeX, utils.sizeY = love.window.getDesktopDimensions(1)
        print(utils.sizeX .. " x " .. utils.sizeY)
    end
    love.window.setMode(w, h, {fullscreen = fs})
end

function utils.PERCENTx(per)
    return (per * utils.sizeX) / 100
end

function utils.PERCENTy(per)
    return (per * utils.sizeY) / 100
end

function utils.RAPPORTx(rap, madefor)
    return (utils.sizeX / madefor) * rap
end

function utils.RAPPORTy(rap, madefor)
    return (utils.sizeY / madefor) * rap
end

function utils.display(img, perx, pery, size)
    size = size or 1
    return love.graphics.draw(img, ((perx * utils.sizeX) / 100), ((pery * utils.sizeY) / 100), 0, ((utils.sizeX / 1920) * size), ((utils.sizeY / 1080) * size), img:getWidth() /2,  img:getHeight() /2)
end