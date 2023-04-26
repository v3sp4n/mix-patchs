function enableDialog(bool)
    memory.setint32(sampGetDialogInfoPtr()+40, bool and 1 or 0, true)
    sampToggleCursor(bool)
end

return setmetatable({
    name = 'enable dialog',

    desc = {
        desc = [[скрыть/открыть диалог.]],
        author = 'imring',
        theme_url = 'https://www.blast.hk/threads/13380/post-189614',
        images = {},
    },

    imgui = {
        ['bool'] = {
            element = 'Checkbox',
            elementArgs = {nil},
            def = imgui.ImBool(false)
        }
    },
    hk = 'bool',
},{
    __call = function(_, self, ...)
        enableDialog(self.bool[1])
    end
})