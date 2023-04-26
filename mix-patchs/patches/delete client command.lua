function deleteClientCommand(name)
    local input = sampGetInputInfoPtr()
    local c = memory.getuint8(input + 0x14DC)
    local nc
    for i = 0, 143 do
        if memory.tostring(input + 0x24C + i * 0x21) == name then
            nc = i 
            break 
        end
    end
    if not nc then return false end
    local addr = input + 0x24C + nc * 0x21
    memory.fill(addr, 0, 0x21)
    memory.copy(addr, addr + 0x21, (143 - nc) * 0x21)
    local addr = input + 0xC + nc * 0x4
    memory.fill(addr, 0, 4)
    memory.copy(addr, addr + 4, (143 - nc) * 4)
    memory.setuint8(input + 0x14DC, c - 1)
    memory.fill(input + 0x24C + c * 0x21, 0, 0x21)
    memory.setuint32(input + 0xC + c * 0x4, 0)
    return true
end

return setmetatable({
    name = 'delete client command',

    desc = {
        desc = [[Удаление клиентской команды по названию]],
        author = 'ШPEK',
        theme_url = 'https://www.blast.hk/threads/13380/post-397280',
        images = {
        },
    },

    imgui = {
        ['command'] = {
            element = 'InputText',
            elementArgs = {nil},
            def = imgui.ImBuffer('/quit_EXAMPLE',256),
        },
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        deleteClientCommand(self.command)
    end
})