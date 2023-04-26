

return setmetatable({
    name = 'disable tire marks',

    desc = {
        desc = [[
Отключает следы от шин при торможении. Возможно кому-то пригодится для зимних сборок. 
Возможно прибавит 0.1% к фпс.]],
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