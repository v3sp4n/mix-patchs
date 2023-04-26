function setLocalId(id)
	memory.setuint16(sampGetPlayerPoolPtr() + 4, id) 
end

return setmetatable({
    name = 'set local id',

    desc = {
        desc = [[меняет локальный id игрока]],
        author = 'LuaQ',
        theme_url = 'https://www.blast.hk/threads/13380/post-293418',
        images = {
        },
    },

    imgui = {
        ['id'] = {
            element = 'InputInt',
            elementArgs = {nil},
            def = imgui.ImInt(0)
        }
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        setLocalId(self.id[1])
    end
})