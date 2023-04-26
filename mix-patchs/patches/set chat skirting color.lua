
local f = {
    ['r1'] = function(argb)
        memory.setuint32(sampGetBase() + 0x6392F, argb, true)
        memory.setuint32(sampGetBase() + 0x63973, argb, true)
        memory.setuint32(sampGetBase() + 0x639AC, argb, true)
        memory.setuint32(sampGetBase() + 0x639E8, argb, true)
        memory.setuint32(sampGetBase() + 0x63A24, argb, true)
        memory.setuint32(sampGetBase() + 0x63A5D, argb, true)
        memory.setuint32(sampGetBase() + 0x63A99, argb, true)
        memory.setuint32(sampGetBase() + 0x63ADC, argb, true)
    end,
    ['r3'] = function(argb)
        memory.setuint32(sampGetBase() + 0x66D7F, argb, true)
        memory.setuint32(sampGetBase() + 0x66DC3, argb, true)
        memory.setuint32(sampGetBase() + 0x66DFC, argb, true)
        memory.setuint32(sampGetBase() + 0x66E38, argb, true)
        memory.setuint32(sampGetBase() + 0x66E74, argb, true)
        memory.setuint32(sampGetBase() + 0x66EAD, argb, true)
        memory.setuint32(sampGetBase() + 0x66EE9, argb, true)
        memory.setuint32(sampGetBase() + 0x66F2C, argb, true)
    end
}

return setmetatable({
    name = 'set chat skirting color',

    desc = {
        desc = [[Меняет цвет и прозрачность обводки чата.]],
        author = 'ARMOR',
        theme_url = 'https://www.blast.hk/threads/13380/post-1149478',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/169308/',
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,0.7)
        }
    },
    -- hk = 'bool',
},{
    __call = function(t, self, ...)
        f[t['get_samp_version']](('0x%02x%02x%02x%02x'):format(
            self.color[4]*255,self.color[1]*255,self.color[2]*255,self.color[3]*255    
        ) )
    end
})