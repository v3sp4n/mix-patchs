function setCorsshairSize(x,y)
	memory.setfloat(8755780, x, false)
	memory.setfloat(8755804, y, false)
	memory.write(5825313, 8755804, 4, false)--разделение оси
end

return setmetatable({
    name = 'set crosshair size',

    desc = {
        desc = [[Изменяет размер прицела.]],
        author = 'Gorskin',
        theme_url = 'https://www.blast.hk/threads/13380/post-1043429',
        images = {
        },
    },

    imgui = {
        ['X'] = {
            element = 'SliderFloat',
            elementArgs = {0,100},
            def = imgui.ImFloat(30)
        },
        ['Y'] = {
            element = 'SliderFloat',
            elementArgs = {0,100},
            def = imgui.ImFloat(30)
        },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        setCorsshairSize(self.X[1],self.Y[2])
    end
})