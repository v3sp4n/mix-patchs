function editHealthBarCoordinates(posX, posY)
    local X = memory.getuint32(0x58EE87, true)
    local Y = memory.getuint32(0x58EE68, true)
    memory.setfloat(X, posX)
    memory.setfloat(Y, posY)
end
sw,sh = getScreenResolution()
return setmetatable({
    name = 'set pos hp bar',

    desc = {
        desc = [[Изменяет координаты хп бара по X и Y координате]],
        author = 'Heroku',
        theme_url = 'https://www.blast.hk/threads/13380/post-545780',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/65391/',
        },
    },

    imgui = {
        ['pos'] = {
            element = 'SliderFloat2',
            elementArgs = {sw,sh},
            def = imgui.ImFloat2(sw/2,sh/2)
        }
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        editHealthBarCoordinates(self.pos[1],self.pos[2])
    end
})