

return setmetatable({
    name = 'disable splashing on water',

    desc = {
        desc = [[��������� ������ ����� �������� � ���� � ������ ����� � �� ��������.]],
        author = 'Gorskin',
        theme_url = 'https://www.blast.hk/threads/13380/post-1213410',
        images = {
            -- ['preview'] = 'https://www.blast.hk/attachments/178022/',
        },
    },

    imgui = {
        -- ['color'] = {
        --     element = 'ColorEdit4',
        --     elementArgs = {},
        --     def = imgui.ImFloat4(1,0,1,1)
        -- },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        memory.write(0x4A1144, 0x0004C2, 4, true)-- ������ ���� ����� � �� ��������
        memory.write(0x4A10D4, 0x0004C2, 4, true)-- water_splash
    end
})