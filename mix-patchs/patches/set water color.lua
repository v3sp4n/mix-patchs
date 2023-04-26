function changeWaterColorRGBA(r, g, b, a, bState)
    if bState then
        memory.fill(0x56178D, 0x90, 5, false)
        memory.setfloat(0xB7C508, r, false)
        memory.setfloat(0xB7C50C, g, false)
        memory.setfloat(0xB7C510, b, false)
        memory.setfloat(0xB7C514, a, false)
    else
        memory.setuint32(0x56178D, 0xFFEC3EE8, false)
        memory.setuint8(0x56178D + 0x4, 0xFF, false)
    end
end

return setmetatable({
    name = 'set water color',

    desc = {
        desc = [[устанавливает цвет воды.]],
        author = 'kin4stat',
        theme_url = 'https://www.blast.hk/threads/13380/post-573075',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/70166/',
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,0.9)
        },
        ['state'] = {
            element = 'Checkbox',
            elementArgs = {},
            def = imgui.ImBool(false),
        }
    },
    -- hk = 'bool',
},{
    __call = function(t, self, ...)
        changeWaterColorRGBA(
            self.color[1]*255,
            self.color[2]*255,
            self.color[3]*255,
            self.color[4]*255,
            self.state[1]
        )
    end
})