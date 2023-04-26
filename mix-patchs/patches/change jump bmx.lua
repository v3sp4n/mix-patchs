
return setmetatable({
    name = 'change jump bmx',

    desc = {
        desc = [[Изменяет высоту прыжка на bmx]],
        author = 'kjor32',
        theme_url = 'https://www.blast.hk/threads/13380/post-1241425',
        images = {
            -- ['preview'] = 'https://www.blast.hk/attachments/186384/'
        },
    },

    imgui = {
        ['height'] = {
            element = 'InputFloat',
            elementArgs = {},
            def = imgui.ImFloat(0.0599)
        },
    },
    -- hk = 'bool',
},{
    __call = function(t, self, ...)
    	memory.setfloat(memory.getuint32(0x6C0449 + 2, true), self.height[1], true) -- Стандартное значение 0.0599
    end
})