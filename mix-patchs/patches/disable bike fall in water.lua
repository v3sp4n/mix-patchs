function DisableBikeFallInWater(bState) -- By 4elove4ik
    if bState then
        memory.fill(0x6B9DEA, 0x90, 5, false)
    else
        memory.setuint32(0x6B9DEA, 0xFFC1C1E8, false)
        memory.setuint8(0x6B9DEA + 0x4, 0xFF, false)
    end
end

return setmetatable({
    name = 'disable bike fall in water',

    desc = {
        desc = [[не дает вам падать с байка под водой 
(Спасибо @4el0ve4ik за адрес функции)]],
        author = 'kin4stat&4el0ve4ik',
        theme_url = 'https://www.blast.hk/threads/13380/post-573075',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/70170/',
        },
    },

    imgui = {
        ['state'] = {
            element = 'Checkbox',
            elementArgs = {},
            def = imgui.ImBool(false),
        }
    },
    hk = 'state',
},{
    __call = function(t, self, ...)
        DisableBikeFallInWater(self.state[1])
    end
})