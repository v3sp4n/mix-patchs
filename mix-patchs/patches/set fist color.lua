


return setmetatable({
    name = 'set fist color',

    desc = {
        desc = [[Меняет цвет фиста
( Устанавливает цвет поверх фиста. Кароче, хуй знает как это назвать(согласен) )]],
        author = 'ARMOR',
        theme_url = 'https://www.blast.hk/threads/13380/post-1133776',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/166312/',
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit4',
            elementArgs = {},
            def = imgui.ImFloat4(1,0,1,0.7)
        }
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
		memory.setint8(0x58D974, self.color[1]*255, true)
		memory.setint8(0x58D96F, self.color[2]*255, true)
		memory.setint8(0x58D96A, self.color[3]*255, true)
        local fistAlpha = ffi.new('float[1]')

        fistAlpha[0] = self.color[4]*255

        ffi.cast('float**', 0x58F620)[0] = fistAlpha
    end
})