function changeCrosshairColor(rgba)
    local r = bit.band(bit.rshift(rgba, 24), 0xFF)
    local g = bit.band(bit.rshift(rgba, 16), 0xFF)
    local b = bit.band(bit.rshift(rgba, 8), 0xFF)
    local a = bit.band(rgba, 0xFF)

    memory.setuint8(0x58E301, r, true)
    memory.setuint8(0x58E3DA, r, true)
    memory.setuint8(0x58E433, r, true)
    memory.setuint8(0x58E47C, r, true)

    memory.setuint8(0x58E2F6, g, true)
    memory.setuint8(0x58E3D1, g, true)
    memory.setuint8(0x58E42A, g, true)
    memory.setuint8(0x58E473, g, true)

    memory.setuint8(0x58E2F1, b, true)
    memory.setuint8(0x58E3C8, b, true)
    memory.setuint8(0x58E425, b, true)
    memory.setuint8(0x58E466, b, true)

    memory.setuint8(0x58E2EC, a, true)
    memory.setuint8(0x58E3BF, a, true)
    memory.setuint8(0x58E420, a, true)
    memory.setuint8(0x58E461, a, true)
end

return setmetatable({
    name = 'change crosshair color',

    desc = {
        desc = [[Изменяет цвета прицела]],
        author = 'Heroku',
        theme_url = 'https://www.blast.hk/threads/13380/post-560537',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/67886/',
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
        changeCrosshairColor(('0x%02x%02x%02x%02x'):format(self.color[1]*255,self.color[2]*255,self.color[3]*255,self.color[4]*255))
    end
})