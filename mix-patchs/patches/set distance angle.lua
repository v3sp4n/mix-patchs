function setDistanceAngle(dist)
    local sBase = require 'memory'
    local memory = { 11989248, 11989228, 11989244, 11989224 }
    for i = 1, #memory do
        sBase.setfloat(memory[i], dist)
    end
end

return setmetatable({
    name = 'set distance angle',

    desc = {
        desc = [[”станавливает дальность камеры от персонажа]],
        author = 'Smeruxa',
        theme_url = 'https://www.blast.hk/threads/13380/post-811072',
        images = {
        },
    },

    imgui = {
        ['distance'] = {
            element = 'SliderFloat',
            elementArgs = {0,20},
            def = imgui.ImFloat(1.4)
        },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        setDistanceAngle(self.distance[1])
    end
})