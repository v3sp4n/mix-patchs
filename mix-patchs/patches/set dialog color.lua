function setDialogColor(l_up, r_up, l_low, r_low)
    local CDialog = memory.getuint32(getModuleHandle("samp.dll") + 0x21A0B8)
    local CDXUTDialog = memory.getuint32(CDialog + 0x1C)
    memory.setuint32(CDXUTDialog + 0x12A, l_up, true) -- Left corner
    memory.setuint32(CDXUTDialog + 0x12E, r_up, true) -- Right upper corner
    memory.setuint32(CDXUTDialog + 0x132, l_low, true) -- Lower left corner
    memory.setuint32(CDXUTDialog + 0x136, r_low, true) -- Right bottom corner
end

function color(self,n)
    return ('0x%02x%02x%02x%02x'):format(self[n][4]*255,self[n][1]*255,self[n][2]*255,self[n][3]*255)
end

return setmetatable({
    name = 'set dialog color',

    desc = {
        desc = [[Изменяет цвета диалогам]],
        author = 'Heroku',
        theme_url = 'https://www.blast.hk/threads/13380/post-621933',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/78597/',
        },
    },

    imgui = {
        ['L UP'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1)
        },
        ['L LOW'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1)
        },
        ['R UP'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1)
        },
        ['R LOW'] = {
            element = 'ColorEdit4',
            elementArgs = {512},
            def = imgui.ImFloat4(1,0,1,1)
        },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        setDialogColor(
            color(self,'L UP'),
            color(self,'R UP'),
            color(self,'L LOW'),
            color(self,'R LOW')
        )
    end
})