function setOutboundWaterColor(R, G, B)
    memory.setuint8(0x586442, R, true)
    memory.setuint8(0x575491, R, true)
    memory.setuint8(0x5758FF, R, true)
    memory.setuint32(0x58643D, G, true)
    memory.setuint32(0x57548C, G, true)
    memory.setuint32(0x5758FA, G, true)
    memory.setuint32(0x586438, B, true)
    memory.setuint32(0x575487, B, true)
    memory.setuint32(0x5758F1, B, true)
end

return setmetatable({
    name = 'set outbound water color',

    desc = {
        desc = [[Изменяет цвет воды вне границ карты]],
        author = 'Akionka',
        theme_url = 'https://www.blast.hk/threads/13380/post-572907',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/70145/',
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit3',
            elementArgs = {},
            def = imgui.ImFloat3(1,0,1)
        },
    },
    -- hk = 'bool',
},{
    __call = function(t, self, ...)
        setOutboundWaterColor(
            self.color[1]*255,
            self.color[2]*255,
            self.color[3]*255
        )
    end
})