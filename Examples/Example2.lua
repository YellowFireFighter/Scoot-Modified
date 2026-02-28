local Library = loadstring(request({Url = "https://raw.githubusercontent.com/YellowFireFighter/Scoot-Modified/refs/heads/main/Source/Library.lua", Method = "Get"}).Body)()

local Window = Library:Window({
    Logo = "77218680285262",
    FadeTime = 0.3,
})

local Watermark = Library:Watermark("Crumbleware V7")
local KeybindList = Library:KeybindList()

--// COMBAT PAGE
local CombatPage = Window:Page({Name = "Combat", SubPages = true})

do -- Aimbot SubPage
    local AimbotSubPage = CombatPage:SubPage({Name = "Aimbot", Columns = 2})
    
    -- Aimbot Settings
    local AimbotSection = AimbotSubPage:Section({Name = "Aimbot", Side = 1})
    
    AimbotSection:Toggle({
        Name = "Enabled",
        Flag = "a_aimbot",
        Default = false,
        Callback = function(value) end
    })
    
    AimbotSection:Toggle({
        Name = "Include NPCs",
        Flag = "ain_aimbot",
        Default = false,
        Callback = function(value) end
    })
    
    AimbotSection:Toggle({
        Name = "Ignore Fov",
        Flag = "if_aimbot",
        Default = false,
        Callback = function(value) end
    })
    
    local AutoShootToggle = AimbotSection:Toggle({
        Name = "Auto Shoot",
        Flag = "aas_aimbot",
        Default = false,
        Callback = function(value) end
    })
    
    AutoShootToggle:Keybind({
        Flag = "aask_aimbot",
        Default = Enum.KeyCode.U,
        Mode = "Toggle",
        Callback = function(value) end
    })
    
    AimbotSection:Slider({
        Name = "Max Distance",
        Flag = "amd_aimbot",
        Min = 0,
        Max = 1200,
        Default = 500,
        Decimals = 1,
        Suffix = "m",
        Callback = function(value) end
    })
    
    AimbotSection:Toggle({
        Name = "Manipulation",
        Flag = "am_aimbot",
        Default = false,
        Callback = function(value) end
    })
    
    AimbotSection:Slider({
        Name = "Manipulation Distance",
        Flag = "amdi_aimbot",
        Min = 0,
        Max = 15,
        Default = 5,
        Decimals = 1,
        Suffix = "m",
        Callback = function(value) end
    })
    
    AimbotSection:Slider({
        Name = "Manipulation Scan Delay",
        Flag = "amsd_aimbot",
        Min = 0,
        Max = 1000,
        Default = 100,
        Decimals = 1,
        Suffix = "ms",
        Callback = function(value) end
    })
    
    AimbotSection:Dropdown({
        Name = "Hitbox",
        Flag = "ah_aimbot",
        Items = {"Head", "UpperTorso", "LowerTorso"},
        Default = "Head",
        Multi = true,
        Callback = function(value) end
    })
    
    AimbotSection:Dropdown({
        Name = "Method",
        Flag = "ame_aimbot",
        Items = {"Silent Aim"},
        Default = "Silent Aim",
        Multi = false,
        Callback = function(value) end
    })
    
    -- Aimbot Visuals
    local AimbotVisualsSection = AimbotSubPage:Section({Name = "Visuals", Side = 2})
    
    AimbotVisualsSection:Toggle({
        Name = "Enabled",
        Flag = "e_visuals",
        Default = false,
        Callback = function(value) end
    })
    
    local ManiToggle = AimbotVisualsSection:Toggle({
        Name = "Manipulation Visualizer",
        Flag = "mv_visuals",
        Default = false,
        Callback = function(value) end
    })
    
    ManiToggle:Colorpicker({
        Flag = "mvc_visuals",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 1,
        Callback = function(color, alpha) end
    })
    
    local SnaplineToggle = AimbotVisualsSection:Toggle({
        Name = "Snapline",
        Flag = "sl_visuals",
        Default = false,
        Callback = function(value) end
    })
    
    SnaplineToggle:Colorpicker({
        Flag = "slc_visuals",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 1,
        Callback = function(color, alpha) end
    })
    
    AimbotVisualsSection:Dropdown({
        Name = "Snapline Position",
        Flag = "slp_visuals",
        Items = {"Middle", "Barrel"},
        Default = "Middle",
        Multi = false,
        Callback = function(value) end
    })
    
    local FovToggle = AimbotVisualsSection:Toggle({
        Name = "Fov Visible",
        Flag = "fv_visuals",
        Default = false,
        Callback = function(value) end
    })
    
    FovToggle:Colorpicker({
        Flag = "fvc_visuals",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 1,
        Callback = function(color, alpha) end
    })
    
    AimbotVisualsSection:Dropdown({
        Name = "Fov Position",
        Flag = "fp_visuals",
        Items = {"Middle", "Barrel"},
        Default = "Middle",
        Multi = false,
        Callback = function(value) end
    })
    
    AimbotVisualsSection:Toggle({
        Name = "Dynamic Fov",
        Flag = "df_visuals",
        Default = false,
        Callback = function(value) end
    })
    
    AimbotVisualsSection:Slider({
        Name = "Fov Radius",
        Flag = "fr_visuals",
        Min = 0,
        Max = 1200,
        Default = 80,
        Decimals = 1,
        Suffix = "px",
        Callback = function(value) end
    })
    
    -- Target Info
    local TargetInfoSection = AimbotSubPage:Section({Name = "Inventory Viewer", Side = 2})
    
    TargetInfoSection:Toggle({
        Name = "Enabled",
        Flag = "e_targetinfo",
        Default = false,
        Callback = function(value) end
    })
end

do -- Gun Mods SubPage
    local GunModsSubPage = CombatPage:SubPage({Name = "Gun Mods", Columns = 2})
    
    local GunModsSection = GunModsSubPage:Section({Name = "Gun Modifications", Side = 1})
    
    GunModsSection:Toggle({
        Name = "Enabled",
        Flag = "e_gunmods",
        Default = false,
        Callback = function(value) end
    })
    
    GunModsSection:Toggle({
        Name = "Remove Tracer",
        Flag = "rt_gunmods",
        Default = false,
        Callback = function(value) end
    })
    
    GunModsSection:Toggle({
        Name = "Instant Reload",
        Flag = "ir_gunmods",
        Default = false,
        Callback = function(value) end
    })
    
    GunModsSection:Toggle({
        Name = "Instant Equip",
        Flag = "ie_gunmods",
        Default = false,
        Callback = function(value) end
    })
    
    GunModsSection:Toggle({
        Name = "Instant Aim",
        Flag = "ia_gunmods",
        Default = false,
        Callback = function(value) end
    })
    
    GunModsSection:Toggle({
        Name = "Remove Obstructions",
        Flag = "ro_gunmods",
        Default = false,
        Callback = function(value) end
    })
    
    GunModsSection:Toggle({
        Name = "No Spread",
        Flag = "ns_gunmods",
        Default = false,
        Callback = function(value) end
    })
    
    GunModsSection:Toggle({
        Name = "Double Tap",
        Flag = "dt_gunmods",
        Default = false,
        Callback = function(value) end
    })
    
    GunModsSection:Toggle({
        Name = "Instant Hit",
        Flag = "ih_gunmods",
        Default = false,
        Callback = function(value) end
    })
    
    GunModsSection:Toggle({
        Name = "Force Auto",
        Flag = "fa_gunmods",
        Default = false,
        Callback = function(value) end
    })
    
    local WeaponModsSection = GunModsSubPage:Section({Name = "Weapon Handling", Side = 2})
    
    WeaponModsSection:Toggle({
        Name = "Instant Lean",
        Flag = "il_gunmods",
        Default = false,
        Callback = function(value) end
    })
    
    WeaponModsSection:Toggle({
        Name = "No Sway",
        Flag = "nsw_gunmods",
        Default = false,
        Callback = function(value) end
    })
    
    WeaponModsSection:Toggle({
        Name = "No Bob",
        Flag = "nb_gunmods",
        Default = false,
        Callback = function(value) end
    })
    
    WeaponModsSection:Toggle({
        Name = "No Recoil",
        Flag = "nr_gunmods",
        Default = false,
        Callback = function(value) end
    })
    
    WeaponModsSection:Toggle({
        Name = "No Kick",
        Flag = "nk_gunmods",
        Default = false,
        Callback = function(value) end
    })
    
    WeaponModsSection:Toggle({
        Name = "Rapid Fire",
        Flag = "rf_gunmods",
        Default = false,
        Callback = function(value) end
    })
    
    WeaponModsSection:Slider({
        Name = "Delay",
        Flag = "rfd_gunmods",
        Min = 0,
        Max = 1000,
        Default = 1000,
        Decimals = 1,
        Suffix = "ms",
        Callback = function(value) end
    })
end

do -- Hit Effects SubPage
    local HitEffectsSubPage = CombatPage:SubPage({Name = "Hit Effects", Columns = 2})
    
    -- Hit Sounds
    local HitSoundsSection = HitEffectsSubPage:Section({Name = "Hit Sounds", Side = 1})
    
    HitSoundsSection:Toggle({
        Name = "Enabled",
        Flag = "e_hitsounds",
        Default = false,
        Callback = function(value) end
    })
    
    HitSoundsSection:Dropdown({
        Name = "Headshot Sound",
        Flag = "hs_hitsounds",
        Items = {"Neverlose", "Gamesense", "Rust", "Among Us", "CS:GO", "Call of Duty", "Click", "Steve", "Bameware", "Bell", "Bubble", "Pick", "Pop", "Sans", "Fatality", "Bonk"},
        Default = "Neverlose",
        Multi = false,
        Callback = function(value) end
    })
    
    HitSoundsSection:Dropdown({
        Name = "Bodyshot Sound",
        Flag = "bs_hitsounds",
        Items = {"Neverlose", "Gamesense", "Rust", "Among Us", "CS:GO", "Call of Duty", "Click", "Steve", "Bameware", "Bell", "Bubble", "Pick", "Pop", "Sans", "Fatality", "Bonk"},
        Default = "Neverlose",
        Multi = false,
        Callback = function(value) end
    })
    
    -- Visual Effects
    local VisualEffectsSection = HitEffectsSubPage:Section({Name = "Visual Effects", Side = 2})
    
    local BulletTracerToggle = VisualEffectsSection:Toggle({
        Name = "Bullet Tracers",
        Flag = "bt_misc",
        Default = false,
        Callback = function(value) end
    })
    
    BulletTracerToggle:Colorpicker({
        Flag = "btc_misc",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 1,
        Callback = function(color, alpha) end
    })
    
    VisualEffectsSection:Slider({
        Name = "Bullet Tracer Time",
        Flag = "btt_misc",
        Min = 0,
        Max = 10,
        Default = 2,
        Decimals = 1,
        Suffix = "s",
        Callback = function(value) end
    })
    
    VisualEffectsSection:Dropdown({
        Name = "Bullet Tracer Mode",
        Flag = "btm_misc",
        Items = {"Drawing", "Lightning"},
        Default = "Drawing",
        Multi = false,
        Callback = function(value) end
    })
    
    local HitChamsToggle = VisualEffectsSection:Toggle({
        Name = "Hit Chams",
        Flag = "hc_misc",
        Default = false,
        Callback = function(value) end
    })
    
    HitChamsToggle:Colorpicker({
        Flag = "hcc_misc",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 1,
        Callback = function(color, alpha) end
    })
    
    VisualEffectsSection:Slider({
        Name = "Hit Chams Time",
        Flag = "hct_misc",
        Min = 0,
        Max = 10,
        Default = 2,
        Decimals = 1,
        Suffix = "s",
        Callback = function(value) end
    })
    
    local ImpactChamsToggle = VisualEffectsSection:Toggle({
        Name = "Impact Chams",
        Flag = "ic_misc",
        Default = false,
        Callback = function(value) end
    })
    
    ImpactChamsToggle:Colorpicker({
        Flag = "icc_misc",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 1,
        Callback = function(color, alpha) end
    })
    
    VisualEffectsSection:Slider({
        Name = "Impact Chams Time",
        Flag = "ict_misc",
        Min = 0,
        Max = 10,
        Default = 2,
        Decimals = 1,
        Suffix = "s",
        Callback = function(value) end
    })
    
    local HitMarkersToggle = VisualEffectsSection:Toggle({
        Name = "Hit Markers",
        Flag = "hm_misc",
        Default = false,
        Callback = function(value) end
    })
    
    HitMarkersToggle:Colorpicker({
        Flag = "hmc_misc",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 1,
        Callback = function(color, alpha) end
    })
    
    VisualEffectsSection:Slider({
        Name = "Hit Marker Time",
        Flag = "hmt_misc",
        Min = 0,
        Max = 10,
        Default = 2,
        Decimals = 1,
        Suffix = "s",
        Callback = function(value) end
    })
    
    local HitLogsToggle = VisualEffectsSection:Toggle({
        Name = "Hit Logs",
        Flag = "hl_misc",
        Default = false,
        Callback = function(value) end
    })
    
    HitLogsToggle:Colorpicker({
        Flag = "hlc_misc",
        Default = Color3.fromRGB(0, 255, 0),
        Alpha = 1,
        Callback = function(color, alpha) end
    })
    
    VisualEffectsSection:Slider({
        Name = "Hit Log Time",
        Flag = "hlt_misc",
        Min = 0,
        Max = 10,
        Default = 2,
        Decimals = 1,
        Suffix = "s",
        Callback = function(value) end
    })
end

--// VISUALS PAGE
local VisualsPage = Window:Page({Name = "Visuals", SubPages = true})

do -- ESP SubPage
    local ESPSubPage = VisualsPage:SubPage({Name = "ESP", Columns = 2})
    
    -- Player ESP
    local PlayerESPSection = ESPSubPage:Section({Name = "Player ESP", Side = 1})
    
    PlayerESPSection:Toggle({
        Name = "Enabled",
        Flag = "e_esp",
        Default = false,
        Callback = function(value) end
    })
    
    local NameToggle = PlayerESPSection:Toggle({
        Name = "Name",
        Flag = "n_esp",
        Default = false,
        Callback = function(value) end
    })
    
    NameToggle:Colorpicker({
        Flag = "nc_esp",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 0,
        Callback = function(color, alpha) end
    })
    
    local DistanceToggle = PlayerESPSection:Toggle({
        Name = "Distance",
        Flag = "d_esp",
        Default = false,
        Callback = function(value) end
    })
    
    DistanceToggle:Colorpicker({
        Flag = "dc_esp",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 0,
        Callback = function(color, alpha) end
    })
    
    local HealthbarToggle = PlayerESPSection:Toggle({
        Name = "Healthbar",
        Flag = "hb_esp",
        Default = false,
        Callback = function(value) end
    })
    
    HealthbarToggle:Colorpicker({
        Flag = "hbcf_esp",
        Default = Color3.fromRGB(0, 255, 0),
        Alpha = 0,
        Callback = function(color, alpha) end
    })
    
    HealthbarToggle:Colorpicker({
        Flag = "hbce_esp",
        Default = Color3.fromRGB(255, 0, 0),
        Alpha = 0,
        Callback = function(color, alpha) end
    })
    
    local WeaponToggle = PlayerESPSection:Toggle({
        Name = "Weapon",
        Flag = "w_esp",
        Default = false,
        Callback = function(value) end
    })
    
    WeaponToggle:Colorpicker({
        Flag = "wc_esp",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 0,
        Callback = function(color, alpha) end
    })
    
    local BoxToggle = PlayerESPSection:Toggle({
        Name = "Box",
        Flag = "b_esp",
        Default = false,
        Callback = function(value) end
    })
    
    BoxToggle:Colorpicker({
        Flag = "bc_esp",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 0,
        Callback = function(color, alpha) end
    })
    
    local LookAngleToggle = PlayerESPSection:Toggle({
        Name = "Look Angle",
        Flag = "la_esp",
        Default = false,
        Callback = function(value) end
    })
    
    LookAngleToggle:Colorpicker({
        Flag = "lac_esp",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 0,
        Callback = function(color, alpha) end
    })
    
    local HeadCircleToggle = PlayerESPSection:Toggle({
        Name = "Head Circle",
        Flag = "hc_esp",
        Default = false,
        Callback = function(value) end
    })
    
    HeadCircleToggle:Colorpicker({
        Flag = "hcc_esp",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 0,
        Callback = function(color, alpha) end
    })
    
    -- ESP Settings
    local ESPSettingsSection = ESPSubPage:Section({Name = "ESP Settings", Side = 2})
    
    ESPSettingsSection:Slider({
        Name = "Max Distance",
        Flag = "md_esp",
        Min = 0,
        Max = 5000,
        Default = 0,
        Decimals = 1,
        Suffix = "",
        Callback = function(value) end
    })
    
    ESPSettingsSection:Slider({
        Name = "Text Size",
        Flag = "ts_esp",
        Min = 8,
        Max = 20,
        Default = 13,
        Decimals = 1,
        Suffix = "",
        Callback = function(value) end
    })
    
    ESPSettingsSection:Dropdown({
        Name = "Box Mode",
        Flag = "pb_esp",
        Items = {"Corner", "Full"},
        Default = "Full",
        Multi = false,
        Callback = function(value) end
    })
    
    ESPSettingsSection:Toggle({
        Name = "Outline",
        Flag = "o_esp",
        Default = false,
        Callback = function(value) end
    })
    
    ESPSettingsSection:Toggle({
        Name = "Lerp Health Color",
        Flag = "lhc_esp",
        Default = false,
        Callback = function(value) end
    })
    
    ESPSettingsSection:Toggle({
        Name = "Fade In",
        Flag = "fi_esp",
        Default = false,
        Callback = function(value) end
    })
    
    ESPSettingsSection:Toggle({
        Name = "Fade Out",
        Flag = "fo_esp",
        Default = false,
        Callback = function(value) end
    })
    
    ESPSettingsSection:Slider({
        Name = "Fade Time",
        Flag = "ft_esp",
        Min = 0,
        Max = 5,
        Default = 1,
        Decimals = 0.1,
        Suffix = "s",
        Callback = function(value) end
    })
end

do -- World SubPage
    local WorldSubPage = VisualsPage:SubPage({Name = "World", Columns = 2})
    
    local WorldSection = WorldSubPage:Section({Name = "World", Side = 1})
    
    WorldSection:Toggle({
        Name = "Enabled",
        Flag = "we_vis",
        Default = false,
        Callback = function(value) end
    })
    
    WorldSection:Toggle({
        Name = "No Weather",
        Flag = "nw_vis",
        Default = false,
        Callback = function(value) end
    })
    
    WorldSection:Toggle({
        Name = "No Clouds",
        Flag = "ncl_vis",
        Default = false,
        Callback = function(value) end
    })
    
    WorldSection:Toggle({
        Name = "No Fog",
        Flag = "nf_vis",
        Default = false,
        Callback = function(value) end
    })
    
    WorldSection:Toggle({
        Name = "No Sun Rays",
        Flag = "nsr_vis",
        Default = false,
        Callback = function(value) end
    })
    
    WorldSection:Toggle({
        Name = "No Bloom",
        Flag = "nb_vis",
        Default = false,
        Callback = function(value) end
    })
    
    WorldSection:Toggle({
        Name = "No Shadows",
        Flag = "ns_vis",
        Default = false,
        Callback = function(value) end
    })
    
    WorldSection:Toggle({
        Name = "Full Bright",
        Flag = "fb_vis",
        Default = false,
        Callback = function(value) end
    })
    
    local AmbientToggle = WorldSection:Toggle({
        Name = "Ambient",
        Flag = "a_vis",
        Default = false,
        Callback = function(value) end
    })
    
    AmbientToggle:Colorpicker({
        Flag = "ac_vis",
        Default = Color3.fromRGB(0, 100, 200),
        Alpha = 0,
        Callback = function(color, alpha) end
    })
    
    WorldSection:Toggle({
        Name = "Remove Foliage",
        Flag = "rf_vis",
        Default = false,
        Callback = function(value) end
    })
    
    WorldSection:Toggle({
        Name = "Remove Flash",
        Flag = "rfl_vis",
        Default = false,
        Callback = function(value) end
    })
    
    WorldSection:Toggle({
        Name = "Remove Grass",
        Flag = "rg_vis",
        Default = false,
        Callback = function(value) end
    })
    
    WorldSection:Toggle({
        Name = "Set Time",
        Flag = "st_vis",
        Default = false,
        Callback = function(value) end
    })
    
    WorldSection:Slider({
        Name = "Time",
        Flag = "t_vis",
        Min = 0,
        Max = 12,
        Default = 12,
        Decimals = 1,
        Suffix = "",
        Callback = function(value) end
    })
    
    WorldSection:Toggle({
        Name = "Sky Changer",
        Flag = "sc_vis",
        Default = false,
        Callback = function(value) end
    })
    
    WorldSection:Dropdown({
        Name = "Sky",
        Flag = "sky_vis",
        Items = {"Default", "Vaporwave", "Clouds", "Twilight", "Chill", "Minecraft", "Among Us", "Redshift"},
        Default = "Default",
        Multi = false,
        Callback = function(value) end
    })
end

do -- Local SubPage
    local LocalSubPage = VisualsPage:SubPage({Name = "Local", Columns = 2})
    
    local LocalSection = LocalSubPage:Section({Name = "Local Player", Side = 1})
    
    LocalSection:Toggle({
        Name = "Enabled",
        Flag = "le_vis",
        Default = false,
        Callback = function(value) end
    })
    
    local BodyChamsToggle = LocalSection:Toggle({
        Name = "Body Chams",
        Flag = "bc_vis",
        Default = false,
        Callback = function(value) end
    })
    
    BodyChamsToggle:Colorpicker({
        Flag = "bcc_vis",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 0,
        Callback = function(color, alpha) end
    })
    
    LocalSection:Dropdown({
        Name = "Body Material",
        Flag = "bm_vis",
        Items = {"ForceField", "Neon", "SmoothPlastic", "Glass"},
        Default = "ForceField",
        Multi = false,
        Callback = function(value) end
    })
    
    LocalSection:Dropdown({
        Name = "Body Texture",
        Flag = "bt_vis",
        Items = {}, -- TextureOptions from original
        Default = "None",
        Multi = false,
        Callback = function(value) end
    })
    
    LocalSection:Toggle({
        Name = "Remove Clothes",
        Flag = "rcl_vis",
        Default = false,
        Callback = function(value) end
    })
    
    local GunChamsToggle = LocalSection:Toggle({
        Name = "Gun Chams",
        Flag = "gc_vis",
        Default = false,
        Callback = function(value) end
    })
    
    GunChamsToggle:Colorpicker({
        Flag = "gcc_vis",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 0,
        Callback = function(color, alpha) end
    })
    
    LocalSection:Dropdown({
        Name = "Gun Material",
        Flag = "gm_vis",
        Items = {"ForceField", "Neon", "SmoothPlastic", "Glass"},
        Default = "ForceField",
        Multi = false,
        Callback = function(value) end
    })
    
    LocalSection:Dropdown({
        Name = "Gun Texture",
        Flag = "gt_vis",
        Items = {}, -- TextureOptions from original
        Default = "None",
        Multi = false,
        Callback = function(value) end
    })
    
    local ArmChamsToggle = LocalSection:Toggle({
        Name = "Arm Chams",
        Flag = "ac_vis",
        Default = false,
        Callback = function(value) end
    })
    
    ArmChamsToggle:Colorpicker({
        Flag = "acc_vis",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 0,
        Callback = function(color, alpha) end
    })
    
    LocalSection:Dropdown({
        Name = "Arm Material",
        Flag = "am_vis",
        Items = {"ForceField", "Neon", "SmoothPlastic", "Glass"},
        Default = "ForceField",
        Multi = false,
        Callback = function(value) end
    })
    
    local SleeveChamsToggle = LocalSection:Toggle({
        Name = "Sleeve Chams",
        Flag = "slc_vis",
        Default = false,
        Callback = function(value) end
    })
    
    SleeveChamsToggle:Colorpicker({
        Flag = "slcc_vis",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 0,
        Callback = function(color, alpha) end
    })
    
    LocalSection:Dropdown({
        Name = "Sleeve Material",
        Flag = "slm_vis",
        Items = {"ForceField", "Neon", "SmoothPlastic", "Glass"},
        Default = "ForceField",
        Multi = false,
        Callback = function(value) end
    })
    
    LocalSection:Dropdown({
        Name = "Sleeve Texture",
        Flag = "slt_vis",
        Items = {}, -- TextureOptions from original
        Default = "None",
        Multi = false,
        Callback = function(value) end
    })
    
    local ViewmodelHighlightToggle = LocalSection:Toggle({
        Name = "Viewmodel Highlight",
        Flag = "vh_vis",
        Default = false,
        Callback = function(value) end
    })
    
    ViewmodelHighlightToggle:Colorpicker({
        Flag = "vhf_vis",
        Default = Color3.fromRGB(255, 255, 255),
        Alpha = 0,
        Callback = function(color, alpha) end
    })
    
    ViewmodelHighlightToggle:Colorpicker({
        Flag = "vho_vis",
        Default = Color3.fromRGB(0, 0, 0),
        Alpha = 0,
        Callback = function(color, alpha) end
    })
    
    -- Other Visuals
    local OtherVisualsSection = LocalSubPage:Section({Name = "Other", Side = 2})
    
    OtherVisualsSection:Toggle({
        Name = "Enabled",
        Flag = "oe_vis",
        Default = false,
        Callback = function(value) end
    })
    
    OtherVisualsSection:Toggle({
        Name = "Hide Server Info",
        Flag = "hsi_vis",
        Default = false,
        Callback = function(value) end
    })
    
    OtherVisualsSection:Toggle({
        Name = "Fov Changer",
        Flag = "fc_vis",
        Default = false,
        Callback = function(value) end
    })
    
    OtherVisualsSection:Slider({
        Name = "Fov",
        Flag = "fov_vis",
        Min = 0,
        Max = 120,
        Default = 90,
        Decimals = 1,
        Suffix = "",
        Callback = function(value) end
    })
    
    local ZoomToggle = OtherVisualsSection:Toggle({
        Name = "Zoom",
        Flag = "z_vis",
        Default = false,
        Callback = function(value) end
    })
    
    ZoomToggle:Keybind({
        Flag = "zk_vis",
        Default = Enum.KeyCode.X,
        Mode = "Hold",
        Callback = function(value) end
    })
    
    OtherVisualsSection:Slider({
        Name = "Zoom",
        Flag = "zv_vis",
        Min = 0,
        Max = 30,
        Default = 5,
        Decimals = 1,
        Suffix = "",
        Callback = function(value) end
    })
    
    local ThirdpersonToggle = OtherVisualsSection:Toggle({
        Name = "Thirdperson",
        Flag = "tp_vis",
        Default = false,
        Callback = function(value) end
    })
    
    ThirdpersonToggle:Keybind({
        Flag = "tpk_vis",
        Default = Enum.KeyCode.C,
        Mode = "Toggle",
        Callback = function(value) end
    })
    
    OtherVisualsSection:Slider({
        Name = "Thirdperson Distance",
        Flag = "tpd_vis",
        Min = 0,
        Max = 15,
        Default = 3,
        Decimals = 1,
        Suffix = "",
        Callback = function(value) end
    })
    
    OtherVisualsSection:Toggle({
        Name = "Remove Visor",
        Flag = "rv_vis",
        Default = false,
        Callback = function(value) end
    })
    
    OtherVisualsSection:Toggle({
        Name = "Viewmodel Changer",
        Flag = "vmc_vis",
        Default = false,
        Callback = function(value) end
    })
    
    OtherVisualsSection:Slider({
        Name = "X Offset",
        Flag = "xo_vis",
        Min = -50,
        Max = 100,
        Default = 50,
        Decimals = 1,
        Suffix = "",
        Callback = function(value) end
    })
    
    OtherVisualsSection:Slider({
        Name = "Y Offset",
        Flag = "yo_vis",
        Min = -50,
        Max = 100,
        Default = 50,
        Decimals = 1,
        Suffix = "",
        Callback = function(value) end
    })
    
    OtherVisualsSection:Slider({
        Name = "Z Offset",
        Flag = "zo_vis",
        Min = -50,
        Max = 100,
        Default = 50,
        Decimals = 1,
        Suffix = "",
        Callback = function(value) end
    })
end

--// MISC PAGE
local MiscPage = Window:Page({Name = "Misc", SubPages = true})

do -- Movement SubPage
    local MovementSubPage = MiscPage:SubPage({Name = "Movement", Columns = 2})
    
    local MovementSection = MovementSubPage:Section({Name = "Movement", Side = 1})
    
    MovementSection:Toggle({
        Name = "Enabled",
        Flag = "me_misc",
        Default = false,
        Callback = function(value) end
    })
    
    MovementSection:Toggle({
        Name = "OmniSprint",
        Flag = "os_misc",
        Default = false,
        Callback = function(value) end
    })
    
    MovementSection:Toggle({
        Name = "Bunnyhop",
        Flag = "bh_misc",
        Default = false,
        Callback = function(value) end
    })
    
    MovementSection:Toggle({
        Name = "Jesus",
        Flag = "j_misc",
        Default = false,
        Callback = function(value) end
    })

    -- Other Movement
    local OtherMovementSection = MovementSubPage:Section({Name = "Other", Side = 2})
    
    OtherMovementSection:Toggle({
        Name = "Join Logs",
        Flag = "jl_misc",
        Default = false,
        Callback = function(value) end
    })
    
    OtherMovementSection:Toggle({
        Name = "Leave Logs",
        Flag = "ll_misc",
        Default = false,
        Callback = function(value) end
    })
    
    OtherMovementSection:Toggle({
        Name = "Remove Landmines",
        Flag = "rl_misc",
        Default = false,
        Callback = function(value) end
    })
    
    OtherMovementSection:Toggle({
        Name = "No Drown",
        Flag = "nd_misc",
        Default = false,
        Callback = function(value) end
    })
end

do -- Anti-Aim SubPage
    local AntiAimSubPage = MiscPage:SubPage({Name = "Anti-Aim", Columns = 2})
    
    -- Fake Lag
    local FakeLagSection = AntiAimSubPage:Section({Name = "Fake Lag", Side = 1})
    
    local FakeLagToggle = FakeLagSection:Toggle({
        Name = "Enabled",
        Flag = "fl_misc",
        Default = false,
        Callback = function(value) end
    })
    
    FakeLagToggle:Keybind({
        Flag = "flk_misc",
        Default = Enum.KeyCode.K,
        Mode = "Toggle",
        Callback = function(value) end
    })
    
    FakeLagSection:Slider({
        Name = "Fake Lag Delay",
        Flag = "flt_misc",
        Min = 1,
        Max = 16,
        Default = 1,
        Decimals = 0.1,
        Suffix = "",
        Callback = function(value) end
    })
    
    FakeLagSection:Toggle({
        Name = "Visualizer",
        Flag = "vfl_misc",
        Default = false,
        Callback = function(value) end
    }):Colorpicker({
        Flag = "flc_misc",
        Default = Color3.fromRGB(255, 0, 0),
        Alpha = 1,
        Callback = function(color, alpha) end
    })
    
    -- Desync
    local DesyncSection = AntiAimSubPage:Section({Name = "Desync", Side = 2})
    
    local DesyncToggle = DesyncSection:Toggle({
        Name = "Enabled",
        Flag = "dsy_misc",
        Default = false,
        Callback = function(value) end
    })
    
    DesyncToggle:Keybind({
        Flag = "dsyk_misc",
        Default = Enum.KeyCode.H,
        Mode = "Toggle",
        Callback = function(value) end
    })
    
    DesyncSection:Toggle({
        Name = "Position Spoofer",
        Flag = "ps_misc",
        Default = false,
        Callback = function(value) end
    })
    
    DesyncSection:Dropdown({
        Name = "Position Mode",
        Flag = "pm_misc",
        Items = {"Random X", "Random Y", "Random Z"},
        Default = nil,
        Multi = true,
        Callback = function(value) end
    })
    
    DesyncSection:Slider({
        Name = "X Offset",
        Flag = "xpo_misc",
        Min = -5,
        Max = 5,
        Default = 0,
        Decimals = 0.1,
        Suffix = "",
        Callback = function(value) end
    })
    
    DesyncSection:Slider({
        Name = "Y Offset",
        Flag = "ypo_misc",
        Min = -5,
        Max = 5,
        Default = 0,
        Decimals = 0.1,
        Suffix = "",
        Callback = function(value) end
    })
    
    DesyncSection:Slider({
        Name = "Z Offset",
        Flag = "zpo_misc",
        Min = -5,
        Max = 5,
        Default = 0,
        Decimals = 0.1,
        Suffix = "",
        Callback = function(value) end
    })
    
    DesyncSection:Toggle({
        Name = "Rotation Spoofer",
        Flag = "rs_misc",
        Default = false,
        Callback = function(value) end
    })
    
    DesyncSection:Dropdown({
        Name = "Rotation Mode",
        Flag = "rm_misc",
        Items = {"Spin X", "Spin Y", "Spin Z"},
        Default = nil,
        Multi = true,
        Callback = function(value) end
    })
    
    DesyncSection:Slider({
        Name = "X Rotation",
        Flag = "xro_misc",
        Min = 0,
        Max = 180,
        Default = 0,
        Decimals = 0.1,
        Suffix = "",
        Callback = function(value) end
    })
    
    DesyncSection:Slider({
        Name = "Y Rotation",
        Flag = "yro_misc",
        Min = 0,
        Max = 180,
        Default = 0,
        Decimals = 0.1,
        Suffix = "",
        Callback = function(value) end
    })
    
    DesyncSection:Slider({
        Name = "Z Rotation",
        Flag = "zro_misc",
        Min = 0,
        Max = 180,
        Default = 0,
        Decimals = 0.1,
        Suffix = "",
        Callback = function(value) end
    })
    
    -- Desync Visualizer
    local DesyncVisualizerSection = AntiAimSubPage:Section({Name = "Desync Visualizer", Side = 2})
    
    local DesyncVisualizerToggle = DesyncVisualizerSection:Toggle({
        Name = "Enabled",
        Flag = "dve_misc",
        Default = false,
        Callback = function(value) end
    })
    
    DesyncVisualizerToggle:Colorpicker({
        Flag = "dvc_misc",
        Default = Color3.fromRGB(0, 0, 255),
        Alpha = 1,
        Callback = function(color, alpha) end
    })
    
    DesyncVisualizerSection:Dropdown({
        Name = "Material",
        Flag = "dvm_misc",
        Items = {"ForceField", "Neon", "SmoothPlastic", "Glass"},
        Default = "ForceField",
        Multi = false,
        Callback = function(value) end
    })
end

do -- Other SubPage
    local OtherSubPage = MiscPage:SubPage({Name = "Other", Columns = 2})
    
    local ChatSpammerSection = OtherSubPage:Section({Name = "Chat Spammer", Side = 1})
    
    ChatSpammerSection:Toggle({
        Name = "Enabled",
        Flag = "cs_misc",
        Default = false,
        Callback = function(value) end
    })
    
    ChatSpammerSection:Dropdown({
        Name = "Mode",
        Flag = "csm_misc",
        Items = {"Trash Talk", "Advertise", "Swimhub", "Not Hacking"},
        Default = nil,
        Multi = false,
        Callback = function(value) end
    })
    
    ChatSpammerSection:Slider({
        Name = "Delay",
        Flag = "csd_misc",
        Min = 0,
        Max = 10,
        Default = 5,
        Decimals = 0.1,
        Suffix = "",
        Callback = function(value) end
    })
end

--// SETTINGS PAGE
local SettingsPage = Library:CreateSettingsPage(Window, Watermark, KeybindList)
