function setHealthColor(hpHigh, hpLow)
    local samp = getModuleHandle("samp.dll")
    memory.setuint32(samp + 0x68B0C, hpHigh, true) 
    memory.setuint32(samp + 0x68B33, hpLow, true)
end

function color(self,n)
    return ('0x%02x%02x%02x%02x'):format(self[n][4]*255,self[n][1]*255,self[n][2]*255,self[n][3]*255)
end

return setmetatable({
    name = 'set health bar color',

    desc = {
        desc = [[Изменяет цвет HP бара у игроков над головами]],
        author = 'Heroku',
        theme_url = 'https://www.blast.hk/threads/13380/post-707649',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/92143/',
        },
    },

    imgui = {
        ['color health'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1)
        },
        ['color bg'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,0.5)
        },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        setHealthColor(color(self,'color health'),color(self,'color bg'))
    end
})