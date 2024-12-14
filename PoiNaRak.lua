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
    TP = Window:AddTab({ Title = "Teleport", Icon = "" }),
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

    Tabs.TP:AddParagraph({
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

    Tabs.TP:AddButton({
        Title = "Snowy Biome",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "เกาะน้ำแข็ง",
                Content = "",
                Buttons = {
                    {
                        Title = "วาป",
                        Callback = function()
                            local teleport_table = {

    location1 = Vector3.new(2311.8642578125, 126.81304931640625, 356.90618896484375), -- your desired position

    location2 = Vector3.new(2311.8642578125, 126.81304931640625, 356.90618896484375)  -- your desired position

}



local tween_s = game:GetService('TweenService')

local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)



local lp = game.Players.LocalPlayer



function bypass_teleport(v)

    if lp.Character and 

    lp.Character:FindFirstChild('HumanoidRootPart') then

        local cf = CFrame.new(v)

        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})

        a:Play()

        -- a.Completed:Wait()

        -- print('Teleporting Done!')

    end

end



bypass_teleport(teleport_table.location1)

                        end
                    },
                    {
                        Title = "ไม่วาป",
                        Callback = function()
			    print("Confirmed the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.TP:AddButton({
        Title = "Deep Waters",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "เกาะน้ำดำ",
                Content = "",
                Buttons = {
                    {
                        Title = "วาป",
                        Callback = function()
                            local teleport_table = {

    location1 = Vector3.new(-989.7180786132812, 123.65310668945312, -1568.054443359375), -- your desired position

    location2 = Vector3.new(-989.7180786132812, 123.65310668945312, -1568.054443359375)  -- your desired position

}



local tween_s = game:GetService('TweenService')

local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)



local lp = game.Players.LocalPlayer



function bypass_teleport(v)

    if lp.Character and 

    lp.Character:FindFirstChild('HumanoidRootPart') then

        local cf = CFrame.new(v)

        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})

        a:Play()

        -- a.Completed:Wait()

        -- print('Teleporting Done!')

    end

end



bypass_teleport(teleport_table.location1)
                        end
                    },
                    {
                        Title = "ไม่วาป",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.TP:AddButton({
        Title = "Ancient Ocean",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "เกาะเอนเชี่ยน",
                Content = "",
                Buttons = {
                    {
                        Title = "วาป",
                        Callback = function()
                            local teleport_table = {

    location1 = Vector3.new(582.2440185546875, 125.16576385498047, -2889.8330078125), -- your desired position

    location2 = Vector3.new(582.2440185546875, 125.16576385498047, -2889.8330078125)  -- your desired position

}



local tween_s = game:GetService('TweenService')

local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)



local lp = game.Players.LocalPlayer



function bypass_teleport(v)

    if lp.Character and 

    lp.Character:FindFirstChild('HumanoidRootPart') then

        local cf = CFrame.new(v)

        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})

        a:Play()

        -- a.Completed:Wait()

        -- print('Teleporting Done!')

    end

end



bypass_teleport(teleport_table.location1)
                        end
                    },
                    {
                        Title = "ไม่วาป",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Main:AddButton({
        Title = "หมายลับ",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Chrismas Island",
                Content = "",
                Buttons = {
                    {
                        Title = "วาป",
                        Callback = function()
                            local teleport_table = {
    
                                location1 = Vector3.new(71.13925170898438, 123.49817657470703, -56.60952377319336), -- your desired position
                            
                                location2 = Vector3.new(71.13925170898438, 123.49817657470703, -56.60952377319336)  -- your desired position
                            
                            }
                            
                            
                            
                            local tween_s = game:GetService('TweenService')
                            
                            local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
                            
                            
                            
                            local lp = game.Players.LocalPlayer
                            
                            
                            
                            function bypass_teleport(v)
                            
                                if lp.Character and 
                            
                                lp.Character:FindFirstChild('HumanoidRootPart') then
                            
                                    local cf = CFrame.new(v)
                            
                                    local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                            
                                    a:Play()
                            
                                    -- a.Completed:Wait()
                            
                                    -- print('Teleporting Done!')
                            
                                end
                            
                            end
                            
                            
                            
                            bypass_teleport(teleport_table.location1)
                        end
                    },
                    {
                        Title = "ไม่วาป",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Settings:AddButton({
        Title = "Boost Mobile",
        Description = "For Fps 100++",
        Callback = function()
            Window:Dialog({
                Title = "Booster Fps For Noob Mobile",
                Content = "ถ้าเปิดจะปิดไม่ได้นะ",
                Buttons = {
                    {
                        Title = "เปิด",
                        Callback = function()
                            local ToDisable = {
                                Textures = true,
                                VisualEffects = true,
                                Parts = true,
                                Particles = true,
                                Sky = true
                            }
                            
                            local ToEnable = {
                                FullBright = false
                            }
                            
                            local Stuff = {}
                            
                            for _, v in next, game:GetDescendants() do
                                if ToDisable.Parts then
                                    if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
                                        v.Material = Enum.Material.SmoothPlastic
                                        table.insert(Stuff, 1, v)
                                    end
                                end
                                
                                if ToDisable.Particles then
                                    if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or v:IsA("Fire") then
                                        v.Enabled = false
                                        table.insert(Stuff, 1, v)
                                    end
                                end
                                
                                if ToDisable.VisualEffects then
                                    if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
                                        v.Enabled = false
                                        table.insert(Stuff, 1, v)
                                    end
                                end
                                
                                if ToDisable.Textures then
                                    if v:IsA("Decal") or v:IsA("Texture") then
                                        v.Texture = ""
                                        table.insert(Stuff, 1, v)
                                    end
                                end
                                
                                if ToDisable.Sky then
                                    if v:IsA("Sky") then
                                        v.Parent = nil
                                        table.insert(Stuff, 1, v)
                                    end
                                end
                            end
                            
                            game:GetService("TestService"):Message("Effects Disabler Script : Successfully disabled "..#Stuff.." assets / effects. Settings :")
                            
                            for i, v in next, ToDisable do
                                print(tostring(i)..": "..tostring(v))
                            end
                            
                            if ToEnable.FullBright then
                                local Lighting = game:GetService("Lighting")
                                
                                Lighting.FogColor = Color3.fromRGB(255, 255, 255)
                                Lighting.FogEnd = math.huge
                                Lighting.FogStart = math.huge
                                Lighting.Ambient = Color3.fromRGB(255, 255, 255)
                                Lighting.Brightness = 5
                                Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
                                Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
                                Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
                                Lighting.Outlines = true
                            end
                        end
                    },
                    {
                        Title = "ไม่เปิด",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.TP:AddButton({
        Title = "Chrismas Island",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Chrismas Island",
                Content = "",
                Buttons = {
                    {
                        Title = "วาป",
                        Callback = function()
                            local teleport_table = {
    
                                location1 = Vector3.new(154.9263458251953, 127.2957992553711, 55.96608352661133), -- your desired position
                            
                                location2 = Vector3.new(154.9263458251953, 127.2957992553711, 55.96608352661133)  -- your desired position
                            
                            }
                            
                            
                            
                            local tween_s = game:GetService('TweenService')
                            
                            local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
                            
                            
                            
                            local lp = game.Players.LocalPlayer
                            
                            
                            
                            function bypass_teleport(v)
                            
                                if lp.Character and 
                            
                                lp.Character:FindFirstChild('HumanoidRootPart') then
                            
                                    local cf = CFrame.new(v)
                            
                                    local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                            
                                    a:Play()
                            
                                    -- a.Completed:Wait()
                            
                                    -- print('Teleporting Done!')
                            
                                end
                            
                            end
                            
                            
                            
                            bypass_teleport(teleport_table.location1)
                        end
                    },
                    {
                        Title = "ไม่วาป",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    
    Tabs.TP:AddButton({
        Title = "High Field",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "เกาะหินงอก",
                Content = "",
                Buttons = {
                    {
                        Title = "วาป",
                        Callback = function()
                            local teleport_table = {

    location1 = Vector3.new(2578.70556640625, 123.55641174316406, -3445.00830078125), -- your desired position

    location2 = Vector3.new(2578.70556640625, 123.55641174316406, -3445.00830078125)  -- your desired position

}



local tween_s = game:GetService('TweenService')

local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)



local lp = game.Players.LocalPlayer



function bypass_teleport(v)

    if lp.Character and 

    lp.Character:FindFirstChild('HumanoidRootPart') then

        local cf = CFrame.new(v)

        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})

        a:Play()

        -- a.Completed:Wait()

        -- print('Teleporting Done!')

    end

end



bypass_teleport(teleport_table.location1)
                        end
                    },
                    {
                        Title = "ไม่วาป",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.TP:AddButton({
        Title = "Toxic island",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "เกาะพิษ",
                Content = "",
                Buttons = {
                    {
                        Title = "วาป",
                        Callback = function()
                            local teleport_table = {

    location1 = Vector3.new(4678.83251953125, 125.359130859375, -2453.92578125), -- your desired position

    location2 = Vector3.new(4678.83251953125, 125.359130859375, -2453.92578125)  -- your desired position

}



local tween_s = game:GetService('TweenService')

local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)



local lp = game.Players.LocalPlayer



function bypass_teleport(v)

    if lp.Character and 

    lp.Character:FindFirstChild('HumanoidRootPart') then

        local cf = CFrame.new(v)

        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})

        a:Play()

        -- a.Completed:Wait()

        -- print('Teleporting Done!')

    end

end



bypass_teleport(teleport_table.location1)
                        end
                    },
                    {
                        Title = "ไม่วาป",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.TP:AddButton({
        Title = "Default Isle",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "เกาะเรื่่มต้น",
                Content = "",
                Buttons = {
                    {
                        Title = "วาป",
                        Callback = function()
                            local teleport_table = {

    location1 = Vector3.new(766.1470947265625, 124.73839569091797, -230.3459014892578), -- your desired position

    location2 = Vector3.new(766.1470947265625, 124.73839569091797, -230.3459014892578)  -- your desired position

}



local tween_s = game:GetService('TweenService')

local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)



local lp = game.Players.LocalPlayer



function bypass_teleport(v)

    if lp.Character and 

    lp.Character:FindFirstChild('HumanoidRootPart') then

        local cf = CFrame.new(v)

        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})

        a:Play()

        -- a.Completed:Wait()

        -- print('Teleporting Done!')

    end

end



bypass_teleport(teleport_table.location1)
                        end
                    },
                    {
                        Title = "ไม่วาป",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.TP:AddButton({
        Title = "Vulcano Isle",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "เกาะลาวา",
                Content = "",
                Buttons = {
                    {
                        Title = "วาป",
                        Callback = function()
                            local teleport_table = {

    location1 = Vector3.new(231.9981231689453, 125.65837860107422, 902.8037109375), -- your desired position

    location2 = Vector3.new(231.9981231689453, 125.65837860107422, 902.8037109375)  -- your desired position

}



local tween_s = game:GetService('TweenService')

local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)



local lp = game.Players.LocalPlayer



function bypass_teleport(v)

    if lp.Character and 

    lp.Character:FindFirstChild('HumanoidRootPart') then

        local cf = CFrame.new(v)

        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})

        a:Play()

        -- a.Completed:Wait()

        -- print('Teleporting Done!')

    end

end



bypass_teleport(teleport_table.location1)
                        end
                    },
                    {
                        Title = "ไม่วาป",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })


    local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
        Title = "ชื่อเกาะต่างๆ",
        Values = {"Snowy Biome", "Deep Waters", "Ancient Ocean", "High Field", "Toxic island", "Default Isle", "Vulcano Isle"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("Snowy Biome")

    Dropdown:OnChanged(function(Value)
        print("Dropdown changed:", Value)
    end)


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
