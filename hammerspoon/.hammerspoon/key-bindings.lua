local window_management = require('window-management')
local mouse_indicator = require('mouse-indicator')
local modal = require('modal')

local function bind(fn, mods, key, message)
    hs.hotkey.bind(mods, key, message, fn)
end

bind(mouse_indicator.toggle, {"⌘", "⇧", "⌃"}, "d")

-- Window Management

modal.bind({"⌘", "⌃"}, "w", {
    {window_management.maximizeWindow,  "f", "Maximize active window"},
    {window_management.centerOnScreen,  "c", "Center active window"},

    {window_management.topHalf,	    "e", "Bring active window to top half"},
    {window_management.bottomHalf,	"d", "Bring active window to bottom half"},
    {window_management.leftHalf,	"s", "Bring active window to left half"},
    {window_management.rightHalf,	"f", "Bring active window to right half"},

    -- {window_management.topUp,	    "up", ""},
    -- {window_management.topDown,	    "down", ""},
    -- {window_management.leftToLeft,	"left", ""},
    -- {window_management.leftToRight,	"right", ""},

    -- {window_management.bottomUp,	"up", ""},
    -- {window_management.bottomDown,	"down", ""},
    -- {window_management.rightToLeft,	"left", ""},
    -- {window_management.rightToRight,"right", ""},
})
