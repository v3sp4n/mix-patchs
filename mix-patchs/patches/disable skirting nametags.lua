
return setmetatable({
    name = 'disable skirting nametags',

    desc = {
        desc = [[Отключает обводку ников в неймтегах]],
        author = 'ARMOR',
        theme_url = 'https://www.blast.hk/threads/13380/post-1168728',
        images = {

        },
    },

    imgui = {

    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        memory.setuint8(getModuleHandle("samp.dll") + 0x6884A, 0, true)
    end
})