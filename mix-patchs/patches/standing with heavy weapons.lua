
return setmetatable({
    name = 'standing with heavy weapons',

    desc = {
        desc = [[���� ��������� ����� � ����� ������� �������
���������, ������ ������ ����� ������ ��� ����.]],
        author = 'Gorskin',
        theme_url = 'https://www.blast.hk/threads/13380/post-1239281',
        images = {
            ['preview'] = 'https://www.blast.hk/attachments/186384/'
        },
    },

    imgui = {

    },
    -- hk = 'bool',
},{
    __call = function(t, self, ...)
    	writeMemory(0x692649+1, 1, 6, true)--patch anim duck
    end
})