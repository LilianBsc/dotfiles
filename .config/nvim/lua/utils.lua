M = {}
local M = {}

local function hex_to_rgb(hex)
    hex = hex:gsub("#", "")
    return {
        tonumber(hex:sub(1, 2), 16),
        tonumber(hex:sub(3, 4), 16),
        tonumber(hex:sub(5, 6), 16),
    }
end

local function rgb_to_hex(rgb)
    return string.format("#%02x%02x%02x", rgb[1], rgb[2], rgb[3])
end

function M.fade(color1, color2, alpha)
  -- Fade/blend color1 into color2 by alpha (0–1)
  -- alpha = 0   → color1
  -- alpha = 1   → color2
    local c1 = hex_to_rgb(color1)
    local c2 = hex_to_rgb(color2)

    local blended = {
        math.floor(c1[1] * (1 - alpha) + c2[1] * alpha),
        math.floor(c1[2] * (1 - alpha) + c2[2] * alpha),
        math.floor(c1[3] * (1 - alpha) + c2[3] * alpha),
    }

    return rgb_to_hex(blended)
end

return M
