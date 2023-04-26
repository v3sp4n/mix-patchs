

return setmetatable({
    name = 'set blood ground color',

    desc = {
        desc = [[Изменяет цвет следов крови на земле.]],
        author = 'ARMOR',
        theme_url = 'https://www.blast.hk/threads/13380/post-1196915',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/178022/',
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit4',
            elementArgs = {},
            def = imgui.ImFloat4(1,0,1,1)
        },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        memory.setuint8(0x49EDDB, self.color[4]*255, true)
        memory.setuint8(0x49EDD6, self.color[1]*255, true)
        memory.setuint8(0x49EDD2, self.color[2]*255, true)
        memory.setuint8(0x49EDD4, self.color[3]*255, true)
    end
})