

return setmetatable({
    name = 'disable glow',

    desc = {
        desc = [[��������� �������� �� �������
( �������� 50+ ����� �� ������� )]],
        author = 'ARMOR',
        theme_url = 'https://www.blast.hk/threads/13380/post-1253921',
        images = {
        },
    },

    imgui = {

    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        memory.fill(0x455F59, 0x90, 5, true)
    end
})