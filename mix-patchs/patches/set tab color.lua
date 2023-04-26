function setTabColor(vers,lt, rt, lb, rb)
    local samp_module_base = sampGetBase()
    local t = {
        ['r1'] = 0x21A188,
        ['r3'] = 0x26E970,
    }
    local tab_ptr = memory.getuint32(samp_module_base + t[vers], true)
 
    memory.setuint32(tab_ptr + 0x12A, rb, true)
    memory.setuint32(tab_ptr + 0x12E, lb, true)
    memory.setuint32(tab_ptr + 0x132, rt, true)
    memory.setuint32(tab_ptr + 0x136, lt, true)
end

function color(self,n)
    return ('0x%02x%02x%02x%02x'):format(self[n][4]*255,self[n][1]*255,self[n][2]*255,self[n][3]*255)
end

return setmetatable({
    name = 'set tab color',

    desc = {
        desc = [[Меняет цвет фона TAB]],
        author = 'ARMOR',
        theme_url = 'https://www.blast.hk/threads/13380/post-1116795',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/163063/',
        },
    },

    imgui = {
        ['L UP'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1)
        },
        ['L LOW'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1)
        },
        ['R UP'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1)
        },
        ['R LOW'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1)
        },
    },
    -- hk = 'bool',
},{
    __call = function(t, self, ...)
        if t['get_samp_version'] == 'unknown' then return end
        setTabColor(
            t['get_samp_version'],
            color(self,'L UP'),
            color(self,'R UP'),
            color(self,'L LOW'),
            color(self,'R LOW')
        )
    end
})