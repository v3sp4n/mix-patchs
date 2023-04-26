
function color(self,n)
    return ('0x%02x%02x%02x%02x'):format(self[n][4]*255,self[n][1]*255,self[n][2]*255,self[n][3]*255)
end

return setmetatable({
    name = 'set color afk nametag',

    desc = {
        desc = [[Меняет цвет картинки того что игрок в АФК]],
        author = 'ARMOR',
        theme_url = 'https://www.blast.hk/threads/13380/post-1168728',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/172765/',
        },
    },

    imgui = {
        ['color bg'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,0.5)
        },
        ['color clock'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1)
        },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        memory.setuint32(getModuleHandle("samp.dll") + 0x6897B, color(self,'color clock'), true) -- Картинка песочных часов
        memory.setuint32(getModuleHandle("samp.dll") + 0x6895C, color(self,'color bg'), true) -- Фон
    end
})