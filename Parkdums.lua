local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Pro Fishing " .. Fluent.Version,
    SubTitle = "by BeerParkdums",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Fishing", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Notification",
        Content = "This is a notification",
        SubContent = "SubContent", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })



    Tabs.Main:AddParagraph({
        Title = "Fishing",
        Content = "โปรตกปลาของเบียร์ปากดำ"
    })



    Tabs.Main:AddButton({
        Title = "Start",
        Description = "ถือเบ็ดก่อนแล้วค่อยกด",
        Callback = function()
            Window:Dialog({
                Title = "จะเปิดโปรหรอ",
                Content = "ตกปลาโหดๆ",
                Buttons = {
                    {
                        Title = "เรื่ม",
                        Callback = function()
                            local success, response = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/l1x-freefirepromax/free/refs/heads/main/.lua")
end)

if success then
    if response and #response > 0 then
        print("[DEBUG] HTTP request successful. Response length: " .. #response)
        local loadSuccess, errorMessage = pcall(function()
            loadstring(response)()
        end)
        if not loadSuccess then
            warn("[DEBUG] Error loading script: " .. tostring(errorMessage))
        else
            print("[DEBUG] Script loaded successfully.")
        end
    else
        warn("[DEBUG] HTTP response is empty.")
    end
else
    warn("[DEBUG] HTTP request failed: " .. tostring(response))
end
                        end
                    },
                    {
                        Title = "ยกเลิก",
                        Callback = function()
                            print("Cancelled The Fishing")
                        end
                    }
                }
            })
        end
    })


    Keybind:OnClick(function()
        print("Keybind clicked:", Keybind:GetState())
    end)

    Keybind:OnChanged(function()
        print("Keybind changed:", Keybind.Value)
    end)

    task.spawn(function()
        while true do
            wait(1)

            -- example for checking if a keybind is being pressed
            local state = Keybind:GetState()
            if state then
                print("Keybind is being held down")
            end

            if Fluent.Unloaded then break end
        end
    end)

    Keybind:SetValue("MB2", "Toggle") -- Sets keybind to MB2, mode to Hold


    local Input = Tabs.Main:AddInput("Input", {
        Title = "Input",
        Default = "Default",
        Placeholder = "Placeholder",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            print("Input changed:", Value)
        end
    })

    Input:OnChanged(function()
        print("Input updated:", Input.Value)
    end)
end

InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "โปรเบียร์",
    Content = "โปรกูไอสัสเบียทำเอง",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
