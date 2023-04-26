function RemoveTracers(bool)
    if bool then
        memory.hex2bin("B800000000909090909090", 0x723DB8, 11)
    else
        memory.hex2bin("DB44241CD8C9E87DDD0F00", 0x723DB8, 11)
    end
end

return setmetatable({
    name = 'toggle traicer bullets',

    desc = {
        desc = [[Визуально убирает/возвращает трейсера от пуль.]],
        author = 'MrBidloKoder',
        theme_url = 'https://www.blast.hk/threads/13380/post-1125173',
        images = {
        },
    },

    imgui = {
        ['bool'] = {
            element = 'Checkbox',
            elementArgs = {},
            def = imgui.ImBool(false)
        },
    },
    -- hk = 'bool',
},{
    __call = function(t, self, ...)
        RemoveTracers(self['bool'][1])
    end
})