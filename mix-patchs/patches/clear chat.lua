function ClearChat()
    memory.fill(sampGetChatInfoPtr() + 306, 0x0, 25200)
    memory.write(sampGetChatInfoPtr() + 306, 25562, 4, 0x0)
    memory.write(sampGetChatInfoPtr() + 0x63DA, 1, 1)
end

return setmetatable({
    name = 'clear chat',

    desc = {
        desc = [[Очистка чата.]],
        author = 'randazzo',
        theme_url = 'https://www.blast.hk/threads/13380/post-185493',
        images = {
        },
    },

    imgui = {

    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        ClearChat()
    end
})