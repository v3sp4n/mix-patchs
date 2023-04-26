
return setmetatable({
    name = 'set money font',

    desc = {
        desc = [[Меняет стиль шрифта денег.]],
        author = 'ARMOR',
        theme_url = 'https://www.blast.hk/threads/13380/post-1122066',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/164162/',
        },
    },

    imgui = {
        ['font'] = {
            element = 'SliderInt',
            elementArgs = {0,3},
            def = imgui.ImInt(0)
        },
    },
    -- hk = 'bool',
},{
    __call = function(t, self, ...)
        memory.setint8(0x58F57F, self.font[1], true)
    end
})