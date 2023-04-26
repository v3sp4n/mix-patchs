
return setmetatable({
    name = 'disable render N icon',

    desc = {
        desc = [[Отключает рендер иконки севера ( буквы N ) на карте.]],
        author = 'ARMOR',
        theme_url = 'https://www.blast.hk/threads/13380/post-1237171',
        images = {
        },
    },

    imgui = {

    },
    -- hk = 'bool',
},{
    __call = function(t, self, ...)
    	memory.fill(0x588188, 0x90, 5, true)
    end
})