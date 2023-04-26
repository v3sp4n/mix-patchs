function setMenuMapColors(R_TL, G_TL, B_TL, R_TR, G_TR, B_TR, R_BL, G_BL, B_BL, R_BR, G_BR, B_BR)
-- перва€ буква в названии переменной - цвет, втора€ - положение t = top = верхний, b = bottom = нижний
-- треть€ - положение r = right = правый, l = left = левый
  memory.setuint32(0x5865DB, R_TL, true)
  memory.setuint32(0x5865BD, R_TR, true)
  memory.setuint32(0x586617, R_BL, true)
  memory.setuint32(0x5865F9, R_BR, true)

  memory.setuint32(0x5865D6, G_TL, true)
  memory.setuint32(0x5865B8, G_TR, true)
  memory.setuint32(0x586612, G_BL, true)
  memory.setuint32(0x5865F4, G_BR, true)

  memory.setuint32(0x5865D1, B_TL, true)
  memory.setuint32(0x5865B3, B_TR, true)
  memory.setuint32(0x58660D, B_BL, true)
  memory.setuint32(0x5865EF, B_BR, true)
  -- setMenuMapColors(0, 255, 255, 255, 0, 255, 255, 255, 0, 128, 128, 128)
end

return setmetatable({
    name = 'set segment map color',

    desc = {
        desc = [[ ”станавливает цвета €чейкам карты на карте (тавтологи€) в главном меню]],
        author = 'Akionka',
        theme_url = 'https://www.blast.hk/threads/13380/post-572907',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/70147/',
        },
    },

    imgui = {
        R_TL = {
            element = 'SliderFloat',
            elementArgs = {0,255},
            def = imgui.ImFloat(255),
        },
        G_TL = {
            element = 'SliderFloat',
            elementArgs = {0,255},
            def = imgui.ImFloat(255),
        },
        B_TL = {
            element = 'SliderFloat',
            elementArgs = {0,255},
            def = imgui.ImFloat(255),
        },
        R_TR = {
            element = 'SliderFloat',
            elementArgs = {0,255},
            def = imgui.ImFloat(255),
        },
        G_TR = {
            element = 'SliderFloat',
            elementArgs = {0,255},
            def = imgui.ImFloat(255),
        },
        B_TR = {
            element = 'SliderFloat',
            elementArgs = {0,255},
            def = imgui.ImFloat(255),
        },
        R_BL = {
            element = 'SliderFloat',
            elementArgs = {0,255},
            def = imgui.ImFloat(255),
        },
        G_BL = {
            element = 'SliderFloat',
            elementArgs = {0,255},
            def = imgui.ImFloat(255),
        },
        B_BL = {
            element = 'SliderFloat',
            elementArgs = {0,255},
            def = imgui.ImFloat(255),
        },
        R_BR = {
            element = 'SliderFloat',
            elementArgs = {0,255},
            def = imgui.ImFloat(255),
        },
        G_BR = {
            element = 'SliderFloat',
            elementArgs = {0,255},
            def = imgui.ImFloat(255),
        },
        B_BR = {
            element = 'SliderFloat',
            elementArgs = {0,255},
            def = imgui.ImFloat(255),
        },
    },
    -- hk = 'bool',
},{
    __call = function(t, self, ...)
        setMenuMapColors(
            self.R_TL[1], self.G_TL[1], self.B_TL[1], self.R_TR[1], self.G_TR[1], self.B_TR[1], self.R_BL[1], self.G_BL[1], self.B_BL[1], self.R_BR[1], self.G_BR[1], self.B_BR[1]
        )
    end
})