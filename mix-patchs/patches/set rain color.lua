function changeWeatherRainStreaksColorARGB(color, bState)
    if bState then
        memory.setuint8(0x72B400, 0xBE, false)
        memory.setuint32(0x72B400 + 0x1, color, false)
        memory.setuint8(0x72B400 + 0x5, 0x90, false)

        memory.setuint8(0x72B464, 0xBA, false)
        memory.setuint32(0x72B464 + 0x1, color, false)
        memory.setuint8(0x72B464 + 0x5, 0x90, false)
    else
        memory.setuint16(0x72B400, 0xCE81, false)
        memory.setuint32(0x72B400 + 0x2, 0x00D2D2E6, false)

        memory.setuint16(0x72B464, 0xCA81, false)
        memory.setuint32(0x72B464 + 0x2, 0x00D2D2E6, false)
    end
end

return setmetatable({
    name = 'set rain color',

    desc = {
        desc = [[Меняет цвет капель дождя]],
        author = 'kin4stat',
        theme_url = 'https://www.blast.hk/threads/13380/post-574257',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/70345/',
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,0.8),
        },
        ['state'] = {
            element = 'Checkbox',
            elementArgs = {},
            def = imgui.ImBool(false),
        }
    },
    -- hk = 'state',
},{
    __call = function(t, self, ...)
        changeWeatherRainStreaksColorARGB(t.argb(self,'color'),self.state[1])
    end
})