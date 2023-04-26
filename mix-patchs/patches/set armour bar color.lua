function setArmourColor(armourHigh, armourLow)
    local samp = getModuleHandle("samp.dll")
    memory.setuint32(samp + 0x68DD5, armourHigh, true) -- full armour bar
    memory.setuint32(samp + 0x68E00, armourLow, true) -- the background
end
function color(self,n)
    return ('0x%02x%02x%02x%02x'):format(self[n][4]*255,self[n][1]*255,self[n][2]*255,self[n][3]*255)
end

return setmetatable({
    name = 'set armour bar color',

    desc = {
        desc = [[Изменяет цвет ARMOUR бара у игроков над головами]],
        author = 'Heroku',
        theme_url = 'https://www.blast.hk/threads/13380/post-707649',
        images = {
        },
    },

    imgui = {
        ['color armour'] = {
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
        setArmourColor(color(self,'color armour'),color(self,'color bg'))
    end
})