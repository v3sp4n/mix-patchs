

return setmetatable({
    name = 'disable burun in water',

    desc = {
        desc = [[Отключает бурун когда плывешь/ходишь в воде.]],
        author = 'Gorskin',
        theme_url = 'https://www.blast.hk/threads/13380/post-1213410',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/181297/',
            ['preview2'] = 'https://www.blast.hk/attachments/181299/',
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
        memory.write(0x68AA70, 0x0004C2, 4, true) -- process swim effects ped
        memory.write(0x6C399F+1, 0, 4, true)
    end
})