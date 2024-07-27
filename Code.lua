---@diagnostic disable: param-type-mismatch
local CVarLoader = _G.CreateFrame("Frame")
local _G = _G
local SetCVar = _G.SetCVar

-- CVars and their description can be found here: https://warcraft.wiki.gg/wiki/Console_variables

local function loadCvars()
  --player highlight
  SetCVar("findYourselfInBg", 1)
  SetCVar("findYourselfInRaid", 1)
  SetCVar("findYourselfMode", 2)
  -- nameplate scale
  SetCVar("nameplateMinScale", 0.8)
  SetCVar("nameplateMaxScale", 1)
  SetCVar("nameplateLargerScale", 1)
  SetCVar("nameplateSelectedScale", 1.2)
  SetCVar("nameplateGlobalScale", 1)
  SetCVar("NamePlateHorizontalScale", 1)
  SetCVar("NamePlateVerticalScale", 1.2)
  SetCVar("NameplateSelfScale", 1.3)

  -- nameplate alpha
  SetCVar("nameplateMinAlpha", 1)
  SetCVar("nameplateMaxAlpha", 0.8)
  SetCVar("nameplateSelectedAlpha", 1)
  SetCVar("nameplateSelfAlpha", 1)

  -- nameplate distance interactions
  SetCVar("nameplateMinAlphaDistance", 10)
  SetCVar("nameplateMaxAlphaDistance", 40)
  SetCVar("nameplateMinScaleDistance", 10)
  SetCVar("nameplateMaxScaleDistance", 40)
  SetCVar("nameplateMaxDistance", 40)
  SetCVar("nameplateMotionSpeed", 0.1)

  --nameplate positioning
  SetCVar("nameplateOtherBottomInset", 0.1)
  SetCVar("nameplateOtherTopInset", 0.15)
  SetCVar("nameplateLargeBottomInset", 0.1)
  SetCVar("nameplateLargeTopInset", 0.15)
  SetCVar("NameplateSelfBottomInset", 0.20)
  SetCVar("nameplateClassResourceTopInset", 0)

  --nameplate misc
  SetCVar("NameplatePersonalHideDelaySeconds", 3)
  SetCVar("NameplatePersonalShowWithTarget", 0)
  SetCVar("nameplateShowEnemyMinions", 1)
  SetCVar("nameplateShowEnemyPets", 1)
  SetCVar("nameplateShowEnemyGuardians", 1)
  SetCVar("nameplateShowEnemyTotems", 1)
  SetCVar("nameplateShowDebuffsOnFriendly", 0)

  -- cast on key down
  SetCVar("ActionButtonUseKeyDown", 1)
  -- fix stutter
  SetCVar("GxAllowCachelessShaderMode", 0)
end

CVarLoader:RegisterEvent("PLAYER_ENTERING_WORLD")

CVarLoader:SetScript("OnEvent", function(_, event)
  if event == "PLAYER_ENTERING_WORLD" then
    loadCvars()
  end
end);