function setWaterLocalPlayer(number)
    memory.setfloat(0xB7CDE0, number * 39.97000244)
end

return setmetatable({
    name = 'set oxygen',

    desc = {
        desc = [[изменить значение кислорода.]],
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
        setWaterLocalPlayer(self.number[1])
    end
})