


return setmetatable({
    name = 'set weapon color',

    desc = {
        desc = [[Меняет цвет иконок оружия
( Устанавливает цвет поверх оружия.)]],
        author = 'ARMOR',
        theme_url = 'https://www.blast.hk/threads/13380/post-1133776',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/166315/',
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
    __call = function(_, self, ...)
        memory.setint8(0x58D88B, self.color[4]*255, true)
        memory.setint8(0x58D8B0, self.color[1]*255, true)
        memory.setint8(0x58D8AB, self.color[2]*255, true)
        memory.setint8(0x58D8A0, self.color[3]*255, true)
    end
})