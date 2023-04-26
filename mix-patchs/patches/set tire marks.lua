function setTireMarks(float)
    memory.setfloat(0x87111C, float) -- default: 0.35714287
end

return setmetatable({
    name = 'set tire marks',

    desc = {
        desc = [[меняет размер следов шин]],
        author = 'PanSeek',
        theme_url = 'https://www.blast.hk/threads/13380/post-1043410',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/148617/'
        },
    },

    imgui = {
        ['tire'] = {
            element = 'SliderFloat',
            elementArgs = {0,10},
            def = imgui.ImFloat(0.35714287)
        }
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        setTireMarks(self.tire[1])
    end
})