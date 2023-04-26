function editChatEditBoxTextColor(color)
    local pInput = memory.read(getModuleHandle("samp.dll") + 0x21A0E8, 4, true)
    local pEditInputBox = memory.read(pInput + 0x8, 4, true)
    memory.write(pEditInputBox + 0x127, color, 4, true)
end

return setmetatable({
    name = 'edit chat edit box text color',

    desc = {
        desc = [[Изменяет цвет текста в EditBox чата]],
        author = 'Heroku',
        theme_url = 'https://www.blast.hk/threads/13380/post-541892',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/64633/',
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1),
        },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        editChatEditBoxTextColor(('0x%02x%02x%02x%02x'):format(self.color[4]*255,self.color[1]*255,self.color[2]*255,self.color[3]*255))
    end
})