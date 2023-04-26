

return setmetatable({
    name = 'change glow traffic light',

    desc = {
        desc = [[Изменяет силу свечения светофоров
вызывается вроде один раз за игру при запуске
(default 10)]],
        author = 'kjor32',
        theme_url = 'https://www.blast.hk/threads/13380/post-1259069',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/190595/'
        },
    },

    imgui = {
        ['glow'] = {
            element = 'InputInt',
            elementArgs = {},
            def = imgui.ImInt(10)
        }
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        memory.setfloat(memory.getuint32(0x848F96 + 2, true),self.glow[1], true) --стандартное значение 10
    end
})