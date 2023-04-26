function deleteString(id)
   memory.fill(sampGetChatInfoPtr() + 306 + id * 252, 0, 252)
   memory.write(sampGetChatInfoPtr() + 0x63DA, 1, 1)
end

return setmetatable({
    name = 'delete string chat',

    desc = {
        desc = [[Удаляет строку в чате]],
        author = 'ШPEK',
        theme_url = 'https://www.blast.hk/threads/13380/post-322767',
        images = {

        },
    },

    imgui = {
        ['id'] = {
            element = 'InputInt',
            elementArgs = {nil},
            def = imgui.ImInt(24)
        },
    },
    -- hk = 'bool',
},{
   __call = function(_, self, ...)
      deleteString(self.id[1])
   end
})