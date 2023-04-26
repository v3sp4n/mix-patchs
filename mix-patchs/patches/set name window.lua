function setNameWindow(name)
ffi.cdef [[
    typedef unsigned long HANDLE;
    typedef HANDLE HWND;
    typedef const char *LPCTSTR;

    HWND GetActiveWindow(void);

    bool SetWindowTextA(HWND hWnd, LPCTSTR lpString);
]]
    ffi.C.SetWindowTextA(ffi.C.GetActiveWindow(), name)
end

return setmetatable({
    name = 'set name window',

    desc = {
        desc = [[устанавливает название активному окну.]],
        author = 'randazzo',
        theme_url = 'https://www.blast.hk/threads/13380/post-233872',
        images = {
        },
    },

    imgui = {
        ['name'] = {
            element = 'InputText',
            elementArgs = {nil},
            def = imgui.ImBuffer('vespa LX 50',256)
        }
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        setNameWindow(self.name[1])
    end
})