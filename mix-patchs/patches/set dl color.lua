function setDLcolor(s,color)
    local t = {
        ['r1'] = 0x712E1,
        ['r3'] = 0x751D1,
    }
    memory.setuint32(getModuleHandle("samp.dll") + t[s], color, true)
    memory.setuint32(getModuleHandle("samp.dll") + t[s], 0xFF000000 + color, true)
end

return setmetatable({
    name = 'set /dl color',

    desc = {
        desc = [[Меняет цвет информации о транспорте(/dl)]],
        author = 'kin4stat',
        theme_url = 'https://www.blast.hk/threads/13380/post-569515',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/69558/',
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,0.5)
        },
    },
    -- hk = 'bool',
},{
    __call = function(t, self, ...)
        setDLcolor(t['get_samp_version'],t.argb(self,'color'))
    end
})