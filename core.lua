-- LibCeldorMedia by Celdor <CeldorWoW@gmail.com>
-- All Rights Reserved

-- luacheck: globals LibCeldorMedia

local addonName = ...
-- Initialize
local media = LibStub("LibSharedMedia-3.0")
local folder = [[Interface\Addons\]] .. addonName .. [[\Libs\Media\]]

local registerMedia = {
    -- status bars
    {"statusbar", "WorldState Score", [[Interface\WorldStateFrame\WORLDSTATEFINALSCORE-HIGHLIGHT.BLP]]},
    -- By Celdor
    {"statusbar", "BarMetal", folder .. [[Statusbars\bar_metal.tga]]},
    {"statusbar", "Fibre", folder .. [[Statusbars\fibre.tga]]},   -- by Celdor
    {"statusbar", "Fibre transparent", folder .. [[Statusbars\fibre_transparent.tga]]},   -- by Celdor

    -- Fonts
    -- From Details
    {"font", "Accidental Presidency", folder .. [[Fonts\Accidental Presidency.ttf]]},
    {"font", "FORCED SQUARE", folder .. [[Fonts\FORCED SQUARE.ttf]]},
    {"font", "Harry P", folder .. [[Fonts\HARRYP__.TTF]]},
    {"font", "Nueva Std Cond", folder .. [[Fonts\NuevaStd-Cond.otf]]},
    {"font", "Oswald", folder .. [[Fonts\Oswald-Regular.otf]]},
    {"font", "TrashHand", folder .. [[Fonts\TrashHand.TTF]]},

    -- Sounds
    -- From ElvUI
    {"sound", "Whisper Alert", folder .. [[Sounds\whisper.ogg]]},
}

for _, m in ipairs(registerMedia) do
    local mediatype, key, data = unpack(m)
    if not media:IsValid(mediatype, key) then
        media:Register(mediatype, key, data)
    end
end
