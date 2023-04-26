


return setmetatable({
    name = 'set map Z bg color',

    desc = {
        desc = [[������ ���� ����� ����� ����� ��������� Z]],
        author = 'Gorskin',
        theme_url = 'https://www.blast.hk/threads/13380/post-1137928',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/167024/',
        },
    },

    imgui = {
        ['color'] = {
            element = 'ColorEdit4',
            elementArgs = {},
            def = imgui.ImFloat4(1,0,1,1)
        }
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        memory.setuint8(0x57579A + 1, self.color[1]*255, true) -- ���� ����� R
        memory.setuint8(0x575798 + 1, self.color[2]*255, true) -- ���� ����� G
        memory.setuint8(0x575792 + 1, self.color[3]*255, true) -- ���� ����� B
        memory.setuint8(0x57578D + 1, self.color[4]*255, true) -- ���� ����� A
    end
})