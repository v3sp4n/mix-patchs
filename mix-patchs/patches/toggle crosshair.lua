function crosshair(param)
	for i, val in ipairs({5825260,5825281,5825270,5825265,5825471,5825498,5825489,5825480,5825568,5825587,5825578,5825573,5825633,5825660,5825651,5825638,5825638,5825159,5825180,5825175,5825170}) do
		memory.write(val, param and 255 or 0, 1, true)
	end
end

return setmetatable({
    name = 'toggle crosshair',

    desc = {
        desc = [[Скрывает прицел]],
        author = 'trefa',
        theme_url = 'https://www.blast.hk/threads/13380/post-302082',
        images = {
        },
    },

    imgui = {
        ['bool'] = {
            element = 'Checkbox',
            elementArgs = {nil},
            def = imgui.ImBool(false)
        }
    },
    hk = 'bool',
},{
    __call = function(_, self, ...)
        crosshair(self.bool[1])
    end
})