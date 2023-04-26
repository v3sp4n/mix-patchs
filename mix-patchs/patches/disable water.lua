function DisableWater(bState) -- By 4elove4ik
    if bState then
        memory.fill(0x53DD31, 0x90, 5, false)
        memory.fill(0x53E004, 0x90, 5, false)
        memory.fill(0x53E142, 0x90, 5, false)
    else
        memory.setuint32(0x53DD31,  0x1B191AE8, false)
        memory.setuint8(0x53DD31 + 0x4, 0x00, false)

        memory.setuint32(0x53E004, 0x1B1647E8, false)
        memory.setuint8(0x53E004 + 0x4, 0x00, false)
 
        memory.setuint32(0x53E142, 0x1B1509E8, false)
        memory.setuint8(0x53E142 + 0x4, 0x00, false)
    end
end

return setmetatable({
    name = 'set water color',

    desc = {
        desc = [[отключает воду]],
        author = 'kin4stat&4el0ve4ik',
        theme_url = 'https://www.blast.hk/threads/13380/post-573075',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/70167/',
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
        DisableWater(self.state[1])
    end
})