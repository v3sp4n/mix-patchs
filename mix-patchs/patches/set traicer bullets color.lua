

return setmetatable({
    name = 'set traicer bullets color',

    desc = {
        desc = [[изменить цвет трейсеров пуль]],
        author = 'Vespan',
        theme_url = 'https://www.blast.hk/threads/13380/post-1299065',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/199176/',
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1),
        },
    },
    -- hk = 'bool',
},{
    __call = function(t, self, ...)
        memory.setint32(0x723CBD+1, t.rgb(self,'color'), true)
        memory.setint8(0x726CDD + 1, self.color[4]*255, true)
        memory.setint32(0x73AFAD + 1, self.color[4]*255, true)
    end
})