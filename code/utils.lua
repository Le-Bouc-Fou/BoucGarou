utils = {
    sizeX = 0,
    sizeY = 0
}

function utils.load()
    utils.sizeX, utils.sizeY = love.graphics.getPixelDimensions()
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
    end
    love.window.setMode(w, h, {fullscreen = fs})
end

function utils.PERCENTx(per)
    return (pre * utils.sizeX) / 100
end

function utils.PERCENTy(per)
    return (pre * utils.sizeY) / 100
end

function utils.RAPPORTx(rap, original)
    return (original / utils.sizeX) * rap
end

function utils.RAPPORTy(rap, original)
    return (original / utils.sizeY) * rap
end