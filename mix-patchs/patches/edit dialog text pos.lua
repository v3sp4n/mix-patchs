function editDialogTextPos(x, y)
     local shitdword = memory.getuint32(getModuleHandle("samp.dll") + 0x21A0B8, true)
     memory.write(shitdword + 0x04, x, 4, true)
     memory.write(shitdword + 0x08, y, 4, true)
end

return setmetatable({
    name = 'edit dialog text pos',

    desc = {
        desc = [[»змен€ет местоположение текста текущего диалога]],
        author = 'Heroku',
        theme_url = 'https://www.blast.hk/threads/13380/post-551976',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/66423/',
        },
    },

    imgui = {
        ['pos'] = {
            element = 'SliderFloat2',
            elementArgs = {1,1000},
            def = imgui.ImFloat2(0,0)
        }
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        editDialogTextPos(self.pos[1],self.pos[2])
    end
})