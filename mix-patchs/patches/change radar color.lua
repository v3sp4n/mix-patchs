function changeRadarColor(rgba)
    local r = bit.band(bit.rshift(rgba, 24), 0xFF)
    local g = bit.band(bit.rshift(rgba, 16), 0xFF)
    local b = bit.band(bit.rshift(rgba, 8), 0xFF)
    local a = bit.band(rgba, 0xFF)
    memory.write(0x58A798, r, 1, true)
    memory.write(0x58A89A, r, 1, true)
    memory.write(0x58A8EE, r, 1, true)
    memory.write(0x58A9A2, r, 1, true)

    memory.write(0x58A790, g, 1, true)
    memory.write(0x58A896, g, 1, true)
    memory.write(0x58A8E6, g, 1, true)
    memory.write(0x58A99A, g, 1, true)

    memory.write(0x58A78E, b, 1, true)
    memory.write(0x58A894, b, 1, true)
    memory.write(0x58A8DE, b, 1, true)
    memory.write(0x58A996, b, 1, true)

    memory.write(0x58A789, a, 1, true)
    memory.write(0x58A88F, a, 1, true)
    memory.write(0x58A8D9, a, 1, true)
    memory.write(0x58A98F, a, 1, true)
end


return setmetatable({
    name = 'change radar color',

    desc = {
        desc = [[Изменение цвета обводки радара]],
        author = 'CaJlaT',
        theme_url = 'https://www.blast.hk/threads/13380/post-562732',
        images = {
            -- ['preview'] = 'https://www.blast.hk/attachments/68334/',
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1),
        },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        changeRadarColor(('0x%02x%02x%02x%02x'):format(self.color[1]*255,self.color[2]*255,self.color[3]*255,self.color[4]*255))
    end
})