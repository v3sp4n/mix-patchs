return setmetatable({
    name = 'Turns off the blood on the ground',

    desc = {
        desc = [[Отключает кровь на земле.]],
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
        memory.fill(0x49EB23, 0x90, 2, true)
    end
})