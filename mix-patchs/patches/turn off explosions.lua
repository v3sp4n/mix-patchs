return setmetatable({
    name = 'turn off explosions',

    desc = {
        desc = [[Отключает создаение взрывов.]],
        author = 'Gorskin',
        theme_url = 'https://www.blast.hk/threads/13380/post-1110222',
        images = {
        },
    },

    imgui = {

    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        writeMemory(0x736A50, 1, 0xC3, true)
    end
})