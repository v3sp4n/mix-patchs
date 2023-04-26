
return setmetatable({
    name = 'set camber',

    desc = {
        desc = [[Описание: Устанавливает развал колес у автомобилей.]],
        author = 'Gorskin',
        theme_url = 'https://www.blast.hk/threads/13380/post-1299409',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/199271/'
        },
    },

    imgui = {
        ['camber'] = {
            element = 'InputInt',
            elementArgs = {},
            def = imgui.ImInt(0)
        },
    },
    -- hk = 'bool',
},{
    __call = function(t, self, ...)
        local tempMem = allocateMemory(4)
        writeMemory(tempMem, 4, representFloatAsInt(self.camber[1]), true)
        writeMemory(0x6AA952+2, 4, tempMem, true)
    end
})