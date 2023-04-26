
return setmetatable({
    name = 'set radar center color',

    desc = {
        desc = [[Изменяет цвет radar_centre]],
        author = 'ARMOR',
        theme_url = 'https://www.blast.hk/threads/13380/post-1130947',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/165802/',
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1)
        },
    },
    -- hk = 'bool',
},{
    __call = function(t, self, ...)
        memory.setuint8(0x588654, self['color'][4]*255, true)
        memory.setuint8(0x588691, self['color'][1]*255, true)
        memory.setuint8(0x58868C, self['color'][2]*255, true)
        memory.setuint8(0x588687, self['color'][3]*255, true)
    end
})