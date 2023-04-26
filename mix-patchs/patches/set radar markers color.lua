

return setmetatable({
    name = 'set radar markers color',

    desc = {
        desc = [[Изменяет цвет обводки маркеров на карте которыми позначают: 
Игроков, серверные метки и т.д]],
        author = 'ARMOR',
        theme_url = 'https://www.blast.hk/threads/13380/post-1187439',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/176225/',
        },
    },

    imgui = {
        ['color square'] = {
            element = 'ColorEdit3',
            elementArgs = {},
            def = imgui.ImFloat3(1,0,1)
        },
        ['color triangle top'] = {
            element = 'ColorEdit3',
            elementArgs = {},
            def = imgui.ImFloat3(1,0,1)
        },
        ['color triangle bottom'] = {
            element = 'ColorEdit3',
            elementArgs = {},
            def = imgui.ImFloat3(1,0,1)
        },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        -- Квадрат
        memory.setuint8(0x584114, self['color square'][1]*255, true) -- R
        memory.setuint8(0x584112, self['color square'][2]*255, true) -- G
        memory.setuint8(0x58410A, self['color square'][3]*255, true) -- B

        -- Треугольник вниз
        memory.setuint8(0x584252, self['color triangle bottom'][1]*255, true) -- R
        memory.setuint8(0x584250, self['color triangle bottom'][2]*255, true) -- G
        memory.setuint8(0x584248, self['color triangle bottom'][3]*255, true) -- B

        -- Треугольник вверх
        memory.setuint8(0x58438D, self['color triangle top'][1]*255, true) -- R
        memory.setuint8(0x58438B, self['color triangle top'][2]*255, true) -- G
        memory.setuint8(0x584385, self['color triangle top'][3]*255, true) -- B
    end
})