

return setmetatable({
    name = 'disable tire marks',

    desc = {
        desc = [[
��������� ����� �� ��� ��� ����������. �������� ����-�� ���������� ��� ������ ������. 
�������� �������� 0.1% � ���.]],
        author = 'Gorskin',
        theme_url = 'https://www.blast.hk/threads/13380/post-1089801',
        images = {
        },
    },

    imgui = {

    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        writeMemory(0x720B22, 1, -1, true)
    end
})