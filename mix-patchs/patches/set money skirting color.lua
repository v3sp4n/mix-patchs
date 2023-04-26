

return setmetatable({
    name = 'set money skirting color',

    desc = {
        desc = [[Меняет цвет обводки денег]],
        author = 'ARMOR',
        theme_url = 'https://www.blast.hk/threads/13380/post-1159396',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/171093/',
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit3',
            elementArgs = {},
            def = imgui.ImFloat3(1,0,1)
        }
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        memory.setuint8(0x58F59C, self.color[1]*255, true)
        memory.setuint8(0x58F59A, self.color[2]*255, true)
        memory.setuint8(0x58F598, self.color[3]*255, true)
    end
})