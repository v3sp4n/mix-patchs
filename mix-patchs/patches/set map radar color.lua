function editRadarMapColor(R, G, B,Alpha)
    memory.setuint8(0x5864CC, R, true)
    memory.setuint8(0x5864C7, G, true)
    memory.setuint8(0x5864C2, B, true)

    memory.setuint8(0x5864BD, Alpha, true)--by ARMOR
end

return setmetatable({
    name = 'set map radar color',

    desc = {
        desc = [[Изменяет цвет карты на радаре]],
        author = 'Heroku',
        theme_url = 'https://www.blast.hk/threads/13380/post-572497',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/70078/',
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit4',
            elementArgs = {},
            def = imgui.ImFloat4(1,0,1,0.8)
        }
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        editRadarMapColor(
            self.color[1]*255,
            self.color[2]*255,
            self.color[3]*255,
            self.color[4]*255
        )
    end
})