

return setmetatable({
    name = 'set KillList skirting color',

    desc = {
        desc = [[Изменяет цвет и прозрачность текста в килл листе]],
        author = 'ARMOR',
        theme_url = 'https://www.blast.hk/threads/13380/post-1234587',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/185506/',
        },
    },

    imgui = {
        ['color skirting'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1)
        },
        ['alpha text'] = {
            element = 'SliderFloat',
            elementArgs = {0,255},
            def = imgui.ImFloat(255)
        },
    },
    -- hk = 'bool',
},{
    __call = function(t, self, ...)

		memory.setint32(getModuleHandle("samp.dll") + 0x65FB0, t.arg(self,'color skirting'), true)
		memory.setint32(getModuleHandle("samp.dll") + 0x65FE2, t.arg(self,'color skirting'), true)
		memory.setint32(getModuleHandle("samp.dll") + 0x66012, t.arg(self,'color skirting'), true)
		memory.setint32(getModuleHandle("samp.dll") + 0x66041, t.arg(self,'color skirting'), true)

		-- Прозрачность обводки
		memory.setint8(getModuleHandle("samp.dll") + 0x65FD6, self['color skirting'][4]*255, true)
		memory.setint8(getModuleHandle("samp.dll") + 0x65FF3, self['color skirting'][4]*255, true)
		memory.setint8(getModuleHandle("samp.dll") + 0x66024, self['color skirting'][4]*255, true)
		memory.setint8(getModuleHandle("samp.dll") + 0x66052, self['color skirting'][4]*255, true)

		-- Прозрачность текста
		memory.setint8(getModuleHandle("samp.dll") + 0x66085, self['alpha text'][1], true)

		--[[ R3 ]]--
		-- Цвет обводки
		memory.setint32(getModuleHandle("samp.dll") + 0x694E0, t.arg(self,'color skirting'), true)
		memory.setint32(getModuleHandle("samp.dll") + 0x69512, t.arg(self,'color skirting'), true)
		memory.setint32(getModuleHandle("samp.dll") + 0x69542, t.arg(self,'color skirting'), true)
		memory.setint32(getModuleHandle("samp.dll") + 0x69571, t.arg(self,'color skirting'), true)

		-- Прозрачность обводки
		memory.setint8(getModuleHandle("samp.dll") + 0x69506, self['color skirting'][4]*255, true)
		memory.setint8(getModuleHandle("samp.dll") + 0x69523, self['color skirting'][4]*255, true)
		memory.setint8(getModuleHandle("samp.dll") + 0x69554, self['color skirting'][4]*255, true)
		memory.setint8(getModuleHandle("samp.dll") + 0x69582, self['color skirting'][4]*255, true)

		-- Прозрачность текста
		memory.setint8(getModuleHandle("samp.dll") + 0x695B5, self['alpha text'][1], true)

    end
})