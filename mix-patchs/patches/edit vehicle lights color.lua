function editVehicleLightsColor(r, g, b)
    memory.setuint8(0x6E1689, r, true)
    memory.setuint8(0x6E1687, g, true)
    memory.setuint8(0x6E1685, b, true)
    memory.setuint8(0x6E1560, r, true)
    memory.setuint8(0x6E155E, g, true)
    memory.setuint8(0x6E1556, b, true)
end

return setmetatable({
    name = 'edit vehicle lights color',

    desc = {
        desc = [[Изменяет цвет отражения от фар]],
        author = 'Heroku',
        theme_url = 'https://www.blast.hk/threads/13380/post-546513',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/65523/',
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit3',
            elementArgs = {nil},
            def = imgui.ImFloat3(1,0,1),
        },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        editVehicleLightsColor(self.color[1]*255,self.color[2]*255,self.color[3]*255)
    end
})