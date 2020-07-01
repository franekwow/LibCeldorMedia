-- LibCeldorMedia by Celdor <CeldorWoW@gmail.com>
-- All Rights Reserved

-- luacheck: globals LibCeldorMedia

local addonName = ...
-- Initialize
local media = LibStub("LibSharedMedia-3.0")
local folder = [[Interface\Addons\]] .. addonName .. [[\Libs\Media\]]

local registerMedia = {
    {"statusbar", "WorldState Score", [[Interface\WorldStateFrame\WORLDSTATEFINALSCORE-HIGHLIGHT.BLP]]},
    {"font", "Accidental Presidency", folder .. [[Accidental Presidency.ttf]]},
    {"font", "FORCED SQUARE", folder .. [[FORCED SQUARE.ttf]]},
    {"font", "Harry P", folder .. [[HARRYP__.TTF]]},
    {"font", "Nueva Std Cond", folder .. [[NuevaStd-Cond.otf]]},
    {"font", "Oswald", folder .. [[Oswald-Regular.otf]]},
    {"font", "TrashHand", folder .. [[TrashHand.TTF]]},
}

for _, m in ipairs(registerMedia) do
    local mediatype, key, data = unpack(m)
    if not media:IsValid(mediatype, key) then
        media:Register(mediatype, key, data)
    end
end
