return setmetatable({
    name = 'turn off fire',

    desc = {
        desc = [[Отключает создаение огня]],
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
        writeMemory(0x539F02, 4, 0x90909090, true)
    end
})