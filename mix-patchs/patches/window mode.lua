function windowMode(w,h)
    local ffi = require('ffi')
    if ffi.arch == 'x64' then
        ffi.cdef'typedef unsigned __int64 UINT_PTR;'
        ffi.cdef'typedef __int64 LONG_PTR;'
    else
        ffi.cdef'typedef unsigned int UINT_PTR;'
        ffi.cdef'typedef long LONG_PTR;'
    end

    ffi.cdef [[
        typedef unsigned long HANDLE;
        typedef HANDLE HWND;
        typedef unsigned int uint;
        typedef LONG_PTR lresult;
        typedef LONG_PTR LPARAM;
        typedef UINT_PTR WPARAM;
        typedef struct _RECT {
          long left;
          long top;
          long right;
          long bottom;
        } RECT, *PRECT;
  
        HWND GetActiveWindow(void);
  
        bool SetWindowPos(
          HWND hWnd,
          HWND hWndInsertAfter,
          int  X,
          int  Y,
          int  cx,
          int  cy,
          uint uFlags
        );
  
        lresult SendMessageA(
          HWND   hWnd,
          uint   Msg,
          WPARAM wParam,
          LPARAM lParam
        );
  
        int GetSystemMetrics(
          int nIndex
        );
  
        bool GetWindowRect(
          HWND   hWnd,
          PRECT lpRect
        );
  
    ]]

    local szx = ffi.C.GetSystemMetrics(0);
    local szy = ffi.C.GetSystemMetrics(1);

    local rect = ffi.new('RECT', 0)
    ffi.C.GetWindowRect(ffi.C.GetActiveWindow(),rect);

    local cszx = rect.right - rect.left
    local cszy = rect.bottom - rect.top

    if szx == cszx and szy == cszy then

        ffi.C.SendMessageA(ffi.C.GetActiveWindow(), 0x0104, 0x00000012, 0x20380001);
        ffi.C.SendMessageA(ffi.C.GetActiveWindow(), 0x0104, 0x0000000D, 0x201C0001);  
        ffi.C.SendMessageA(ffi.C.GetActiveWindow(), 0x0106, 0x0000000D, 0x201C0001);
        ffi.C.SendMessageA(ffi.C.GetActiveWindow(), 0x0105, 0x0000000D, 0xE01C0001);
        ffi.C.SendMessageA(ffi.C.GetActiveWindow(), 0x0101, 0x00000012, 0xC0380001);

        ffi.C.SetWindowPos(ffi.C.GetActiveWindow(), -1, 1, 1, w,h,0x0200)
    end
end

return setmetatable({
    name = 'window mode',

    desc = {
        desc = [[Выход из полноэкранного режима]],
        author = 'molimawka',
        theme_url = 'https://www.blast.hk/threads/13380/post-290824',
        images = {
        },
    },

    imgui = {
        ['size X-Y'] = {
            element = 'SliderFloat2',
            elementArgs = {1,5000},
            def = imgui.ImFloat2(640,480)
        }
    },
    -- hk = 'bool',
},{
    __call = function(_, self, ...)
        windowMode(self['size X-Y'][1],self['size X-Y'][2])
    end
})