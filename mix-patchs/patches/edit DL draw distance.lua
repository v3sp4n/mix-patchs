function editDLDrawDistance(distance)
    local handle = getModuleHandle("samp.dll")
    if handle == 0x0 then return end
    memory.setfloat(handle + 0xE5804, distance--[[def 20.0]], 1)
end

return setmetatable({
    name = 'edit DL draw distance(R4)',

    desc = {
        desc = [[Изменяет дистанцию прорисовки /dl для SA:MP 0.3.7 R4]],
        author = 'Heroku',
        theme_url = 'https://www.blast.hk/threads/13380/post-547412',
        images = {

        },
    },

    imgui = {
        ['distance'] = {
            element = 'SliderFloat',
            elementArgs = {20,9999},
            def = imgui.ImFloat(20),
        },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        editDLDrawDistance(self.distance[1])
    end
})