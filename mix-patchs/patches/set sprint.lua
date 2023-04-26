function setSprintLocalPlayer(number)
	memory.setfloat(0xB7CDB4, number * 31.47000244)
end

return setmetatable({
    name = 'set sprint',

    desc = {
        desc = [[изменить значение выносливости.]],
        author = 'imring',
        theme_url = 'https://www.blast.hk/threads/13380/post-192584',
        images = {
        },
    },

    imgui = {
        ['number'] = {
            element = 'InputInt',
            elementArgs = {nil},
            def = imgui.ImInt(0)
        }
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        setSprintLocalPlayer(self.number[1])
    end
})