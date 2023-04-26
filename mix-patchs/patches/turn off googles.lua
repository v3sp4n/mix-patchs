return setmetatable({
    name = 'turn off googles',

    desc = {
        desc = [[Отключает очки ночного видения и тепловизор.]],
        author = 'Gorskin',
        theme_url = 'https://www.blast.hk/threads/13380/post-1107931',
        images = {
        },
    },

    imgui = {

    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        memory.fill(0x634F67, 0x90, 5, true)
    end
})