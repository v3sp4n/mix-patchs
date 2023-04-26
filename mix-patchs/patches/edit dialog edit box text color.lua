function editDialogEditBoxTextColor(color)
    local pDialog = memory.read(getModuleHandle("samp.dll") + 0x21A0B8, 4, true)
    local pEditBox = memory.read(pDialog + 0x24, 4, true)
    memory.write(pEditBox + 0x127, color, true)
end

return setmetatable({
    name = 'edit dialog edit box text color',

    desc = {
        desc = [[Изменяет цвет текста в EditBox диалога]],
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
        editDialogEditBoxTextColor(('0x%02x%02x%02x%02x'):format(self.color[4]*255,self.color[1]*255,self.color[2]*255,self.color[3]*255))
    end
})