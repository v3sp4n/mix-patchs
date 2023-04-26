function EnableDriveOrWalkUnderWater(bState)
    memory.setuint8(0x6C2759, bState and 1 or 0, false)
end

return setmetatable({
    name = 'drive or walk under water',

    desc = {
        desc = [[включает возможность ходить/ездить под водой]],
        author = 'kin4stat',
        theme_url = 'https://www.blast.hk/threads/13380/post-573075',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/70169/',
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
        EnableDriveOrWalkUnderWater(self.state[1])
    end
})