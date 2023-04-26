function DisableUnderWaterEffects(bState)
    memory.setuint8(0x52CCF9, bState and 0xEB or 0x74, false)
end

return setmetatable({
    name = 'disable effects under water',

    desc = {
        desc = [[отключает все эффекты накладываемые игрой под водой]],
        author = 'kin4stat',
        theme_url = 'https://www.blast.hk/threads/13380/post-573075',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/70171/',
        },
    },

    imgui = {
        ['state'] = {
            element = 'Checkbox',
            elementArgs = {},
            def = imgui.ImBool(false),
        }
    },
    -- hk = 'state',
},{
    __call = function(t, self, ...)
        DisableUnderWaterEffects(self.state[1])
    end
})