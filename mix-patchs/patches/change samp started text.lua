function loaded_msg(text,color)
    memory.fill(sampGetBase() + 463840, 0, 1, true)
    memory.fill(sampGetChatInfoPtr() + 306, 0x0, 25200)
    memory.write(sampGetChatInfoPtr() + 306, 25562, 4, 0x0)
    memory.write(sampGetChatInfoPtr() + 0x63DA, 1, 1)
    -- sampAddChatMessage('SAMP 0.3.7 R1 {ffffff}Started', -1)
    sampAddChatMessage(text, color)
end

return setmetatable({
    name = 'change samp starder text',

    desc = {
        desc = [[Change samp started text]],
        author = 'SADFI2259X',
        theme_url = 'https://www.blast.hk/threads/13380/post-1031217',
        images = {
        },
    },

    imgui = {
        ['text'] = {
            element = 'InputText',
            elementArgs = {},
            def = imgui.ImBuffer('SAMP 0.3.7 {00ff00}starder')
        },
        ['color'] = {
            element = 'ColorEdit3',
            elementArgs = {},
            def = imgui.ImFloat3(1,0,1)
        },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        loaded_msg(u8:decode(self.text[1]),('0x%02x%02x%02x'):format(self.color[1]*255,self.color[2]*255,self.color[3]*255))
    end
})