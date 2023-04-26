
return setmetatable({
    name = 'separate weapon ammo',

    desc = {
        desc = [[Меняет символ разделения патронов.]],
        author = 'ARMOR',
        theme_url = 'https://www.blast.hk/threads/13380/post-1122066',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/164219/',
        },
    },

    imgui = {
        ['separate'] = {
            element = 'InputText',
            elementArgs = {},
            def = imgui.ImBuffer('&',1)
        },
    },
    -- hk = 'bool',
},{
    __call = function(t, self, ...)
        memory.copy(0x866BBC, memory.strptr('%d'..self['separate'][1]..'%d'), 6, true)
    end
})