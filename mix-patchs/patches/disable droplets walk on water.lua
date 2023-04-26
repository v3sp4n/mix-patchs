

return setmetatable({
    name = 'disable droplets walk on water',

    desc = {
        desc = [[Отключает капли при ходьбе по воде.]],
        author = 'Gorskin',
        theme_url = 'https://www.blast.hk/threads/13380/post-1213410',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/181300/',
        },
    },

    imgui = {
        -- ['color'] = {
        --     element = 'ColorEdit4',
        --     elementArgs = {},
        --     def = imgui.ImFloat4(1,0,1,1)
        -- },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        memory.write(0x6C3606+1, 0, 4, true)
    end
})