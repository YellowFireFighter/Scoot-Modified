# Scoot Modified UI Library

## Getting Started

```lua
local Library = loadstring(request({Url = "https://raw.githubusercontent.com/YellowFireFighter/Scoot-Modified/refs/heads/main/Source/Library.lua", Method = "Get"}).Body)()
```

---

## Window

```lua
local Window = Library:Window({
    Logo = "assetId",
    FadeTime = 0.3,
})
```

---

## Watermark

```lua
local Watermark = Library:Watermark("Text here")
```

---

## Keybind List

```lua
local KeybindList = Library:KeybindList()
```

---

## Pages

```lua
local Page = Window:Page({
    Name = "Page Name",
    SubPages = true,  -- optional, enables subpage support
    Columns = 2,      -- optional, number of columns (default 1)
})
```

### Sub Pages

```lua
local SubPage = Page:SubPage({
    Name = "SubPage Name",
    Columns = 2,
})
```

---

## Sections

```lua
local Section = Page:Section({
    Name = "Section Name",
    Side = 1, -- 1 = left, 2 = right
})
```

---

## Elements

### Toggle

```lua
local Toggle = Section:Toggle({
    Name = "Toggle Name",
    Flag = "UniqueFlag",
    Default = false,
    Callback = function(Value) end
})
```

| Method | Description |
|--------|-------------|
| `Toggle:Set(bool)` | Set the toggle value |
| `Toggle:Get()` | Returns `Toggle.Value` |
| `Toggle:SetVisibility(bool)` | Show/hide the element |

---

### Slider

```lua
local Slider = Section:Slider({
    Name = "Slider Name",
    Flag = "UniqueFlag",
    Min = 0,
    Max = 100,
    Default = 50,
    Decimals = 0.01,
    Suffix = "px",
    Callback = function(Value) end
})
```

| Method | Description |
|--------|-------------|
| `Slider:Set(number)` | Set the slider value |
| `Slider:Get()` | Returns `Slider.Value` |
| `Slider:SetVisibility(bool)` | Show/hide the element |

---

### Dropdown

```lua
local Dropdown = Section:Dropdown({
    Name = "Dropdown Name",
    Flag = "UniqueFlag",
    Items = {"Option 1", "Option 2"},
    Default = "Option 1",
    Multi = false,
    Callback = function(Value) end
})
```

| Method | Description |
|--------|-------------|
| `Dropdown:Set(string)` | Set the selected value |
| `Dropdown:Get()` | Returns `Dropdown.Value` |
| `Dropdown:Add(string)` | Add an option, returns `OptionData` |
| `Dropdown:Remove(string)` | Remove an option |
| `Dropdown:Refresh(table, boolean)` | Replace options list |
| `Dropdown:SetVisibility(bool)` | Show/hide the element |

---

### Searchbox

```lua
local Searchbox = Section:Searchbox({
    Name = "Searchbox Name",
    Flag = "UniqueFlag",
    Items = {"Option 1", "Option 2"},
    Default = "Option 1",
    Multi = false,
    Callback = function(Value) end
})
```

| Method | Description |
|--------|-------------|
| `Searchbox:Set(string)` | Set the selected value |
| `Searchbox:Get()` | Returns `Searchbox.Value` |
| `Searchbox:Add(string)` | Add an option, returns `OptionData` |
| `Searchbox:Remove(string)` | Remove an option |
| `Searchbox:Refresh(table, boolean)` | Replace options list |
| `Searchbox:SetVisibility(bool)` | Show/hide the element |

---

### Button

```lua
local Button = Section:Button()
Button:Add("Label", function()
    -- callback
end)
```

Multiple buttons can be added to the same `Button` container with separate `Button:Add()` calls.

---

### Colorpicker

Colorpickers are attached to a **Toggle**, not a Section directly.

```lua
local Colorpicker = Toggle:Colorpicker({
    Name = "Color Name",
    Flag = "UniqueFlag",
    Default = Color3.fromRGB(255, 255, 255),
    Alpha = 0,
    Callback = function(Value) end
})
```

| Method | Description |
|--------|-------------|
| `Colorpicker:Set(Color3, alpha?)` | Set color and optional alpha |
| `Colorpicker:Get()` | Returns `Color3` |
| `Colorpicker:SlidePalette(InputObject)` | Slide the palette picker |
| `Colorpicker:SlideHue(InputObject)` | Slide the hue bar |
| `Colorpicker:SlideAlpha(InputObject)` | Slide the alpha bar |
| `Colorpicker:Update(bool, bool)` | Manually trigger update |
| `Colorpicker:SetVisibility(bool)` | Show/hide the element |

---

### Keybind

Keybinds are attached to a **Toggle**.

```lua
local Keybind = Toggle:Keybind({
    Flag = "UniqueFlag",
    Default = Enum.KeyCode.E,
    Mode = "Toggle", -- "Toggle" or "Hold"
    Callback = function(Value) end
})
```

| Method | Description |
|--------|-------------|
| `Keybind:Get()` | Returns `Key`, `Mode`, `Toggled` |
| `Keybind:Set(EnumItem / table / string)` | Set the keybind |
| `Keybind:SetMode(string)` | Set the mode |
| `Keybind:Press()` | Simulate a press |

---

## Notifications

```lua
Library:Notification("Title", "Description", 5) -- duration in seconds
```

---

## Settings Page

```lua
local SettingsPage = Library:CreateSettingsPage(Window, Watermark, KeybindList)
```

Automatically creates a settings page with theme, watermark, and keybind list configuration.

Original by: Samet  
Modified by: Yellow 
