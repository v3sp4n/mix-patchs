function DisableBlurUnderWater(bState)
    memory.setuint16(0x705138, bState and 0x9090 or 0x0F74, false)
end

return setmetatable({
    name = 'disable blur under water',

    desc = {
        desc = [[отключает "плавающий" экран под водой, 
а также убирает потемнение экрана с глубиной]],
        author = 'kin4stat',
        theme_url = 'https://www.blast.hk/threads/13380/post-573075',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/70173/',
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
        DisableBlurUnderWater(self.state[1])
    end
})