
return setmetatable({
    name = 'set offset nick nametag',

    desc = {
        desc = [[������� ���� ������� �� ������
(��� ������ ��������, ��� ���� ����� ���������� ���)]],
        author = 'ARMOR',
        theme_url = 'https://www.blast.hk/threads/13380/post-1168728',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/172784/',
        },
    },

    imgui = {
        ['offsetY'] = {
            element = 'SliderInt',
            elementArgs = {0,50},
            def = imgui.ImInt(17)
        },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        memory.setuint8(sampGetBase() + 0x6885F, self.offsetY[1], true) -- ��� ������ ��������, ��� ���� ����� ���������� ���. ����������� ��������: 17.
    end
})