function editObjectBySampId(id, playerobj)
    if isSampAvailable() then
        local ffi = require("ffi")
        ffi.cast("void (__thiscall*)(unsigned long, short int, unsigned long)", sampGetBase() + 0x6DE40)(readMemory(sampGetBase() + 0x21A0C4, 4), id, playerobj and 1 or 0)
    end
end

return setmetatable({
    name = 'edit object',

    desc = {
        desc = [[включает редактирование обьекта]],
        author = 'ШPEK',
        theme_url = 'https://www.blast.hk/threads/13380/post-376878',
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
        local obj = sampGetObjectHandleBySampId(self.id[1])
        if doesObjectExist(obj) then
            editObjectBySampId(self.id[1])
        else
            printStringNow('~r~~r~~r~object not exits',2500)
        end
    end
})