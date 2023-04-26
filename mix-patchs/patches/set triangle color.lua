function set_triangle_color(r, g, b)
    local bytes= "90909090909090909090909090C744240E00000000909090909090909090909090909090C744240F0000000090B300"
    memory.hex2bin(bytes, 0x60BB41, bytes:len()/2)
    memory.setint8(0x60BB52, r, false)
    memory.setint8(0x60BB69, g, false)
    memory.setint8(0x60BB6F, b, false)
end

return setmetatable({
    name = 'set triangle color',

    desc = {
        desc = [[функция, которая позволяет сменить цвет треугольника над головой]],
        author = 'etereon',
        theme_url = 'https://www.blast.hk/threads/13380/post-822713',
        images = {
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit3',
            elementArgs = {nil},
            def = imgui.ImFloat3(1,0,1)
        }
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        set_triangle_color(self.color[1]*255,self.color[2]*255,self.color[3]*255)
    end
})