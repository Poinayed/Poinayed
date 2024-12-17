-- Infinite While Loop
while true do
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
