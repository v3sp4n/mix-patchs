function addKillLineToKillList(killer, died, killercolor, diedcolor, weapon)
    if isSampAvailable() then
        local ffi = require("ffi")
        local chKiller = ffi.new("char[?]", #killer + 1)
        ffi.copy(chKiller, killer, #killer)
        local chDied = ffi.new("char[?]", #died + 1)
        ffi.copy(chDied, died, #died)
        func = ffi.cast("char* (__thiscall*)(unsigned long, char*, char*, unsigned long, unsigned long, char)", sampGetBase() + 0x66A10)
        func(sampGetKillInfoPtr(), chKiller, chDied, killercolor, diedcolor, weapon)
    end
end

return setmetatable({
    name = 'add line killlist',

    desc = {
        desc = [[Добавляет новое убийство в KillList]],
        author = 'ШPEK',
        theme_url = 'https://www.blast.hk/threads/13380/post-365082',
        images = {

        },
    },

    imgui = {
        ['killer'] = {
            element = 'InputText',
            elementArgs = {nil},
            def = imgui.ImBuffer('killerNick_Name')
        },
        ['killer color'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1),
        },
        ['died'] = {
            element = 'InputText',
            elementArgs = {nil},
            def = imgui.ImBuffer('diedNick_Name')
        },
        ['died color'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1),
        },
        ['weapon'] = {
            element = 'InputInt',
            elementArgs = {nil},
            def = imgui.ImInt(24)
        },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        addKillLineToKillList(
            self.killer[1],
            self.died[1],

            tonumber(('0x%02x%02x%02x%02x'):format(self['killer color'][4]*255,self['killer color'][1]*255,self['killer color'][2]*255,self['killer color'][3]*255)),
            tonumber(('0x%02x%02x%02x%02x'):format(self['died color'][4]*255,self['died color'][1]*255,self['died color'][2]*255,self['died color'][3]*255)),

            self.weapon[1]
        )
    end
})