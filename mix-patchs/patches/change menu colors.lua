function changeMenuColors(r,g,b)
     memory.setuint8(0x57974C, r, true)
     memory.setuint8(0x57974A, g, true)
     memory.setuint8(0x579748, b, true)

     memory.setuint8(0x579A3E, r, true)
     memory.setuint8(0x579A3C, g, true)
     memory.setuint8(0x579A3A, b, true)
end

return setmetatable({
    name = 'change menu colors',

    desc = {
        desc = [[Изменение цвета обводки шрифта в главном меню(RGB)
(используется в цикле, достаточно один раз нажать на ACT)]],
        author = 'lemonager',
        theme_url = 'https://www.blast.hk/threads/13380/post-562691',
        images = {
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit3',
            elementArgs = {nil},
            def = imgui.ImFloat3(1,0,1)
        }
    },
    -- hk = 'bool',
    WHILE = false
},{
    __call = function(t, self, ...)
     if not t.WHILE then
          t.WHILE = true
          lua_thread.create(function()
               while true do wait(0)
                    changeMenuColors(self.color[1]*255,self.color[2]*255,self.color[3]*255)
               end
          end)
     end
    end
})