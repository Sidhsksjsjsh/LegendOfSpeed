local library = loadstring(game:HttpGet("https://pastebin.com/raw/Uub92rmN"))()


local Window = library:AddWindow("Sync X - Cheating Tool | Legends Of Speed ⚡",
    {
        main_color = Color3.fromRGB(170, 0, 0),
        min_size = Vector2.new(373, 433),
        toggle_key = Enum.KeyCode.RightShift,
    })

local self_ind = game.Players.LocalPlayer

local advanced = {}
local rare = {}
local basic = {}
local epic = {}
local unique = {}
local omega = {}

local function children(a,virtual)
for _,v in pairs(a:GetChildren()) do
virtual(v)
end
end

local function insert(str,localName)
table.insert(localName,str)
end

children(self_ind.petsFolder.Advanced,function(v)
   insert(v.Name,advanced)
end)

children(self_ind.petsFolder.Rare,function(v)
   insert(v.Name,rare)
end)

children(self_ind.petsFolder.Basic,function(v)
   insert(v.Name,basic)
end)

children(self_ind.petsFolder.Epic,function(v)
   insert(v.Name,epic)
end)

children(self_ind.petsFolder.Unique,function(v)
   insert(v.Name,unique)
end)

children(self_ind.petsFolder.Omega,function(v)
   insert(v.Name,omega)
end)


local function touch(first,second)
firetouchinterest(first,self_ind.Character.HumanoidRootPart,second)
end

local function Race_Cheat()
children(game:GetService("Workspace").raceMaps,function(io)
children(io,function(v)
touch(v,0)
wait()
touch(v,1)
end)
end)
end

local function TP_Race()
children(game:GetService("Workspace").raceMaps,function(io)
children(io,function(v)
self_ind.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
end)
end)
end

local function AddSystem(amount,is)
for k = 1,tonumber(amount) do
	is(k)
end
end

local function getValue(str)
	return str.Value
end

local Main = Window:AddTab("Main")
local Tp = Window:AddTab("Teleport")
local Re = Window:AddTab("Rebirth")
local Egg = Window:AddTab("Egg")
local P = Window:AddTab("Race")
local S = Window:AddTab("Pet")

local configTool = {
	speed = {def = 16,max = 200,min = 0},
	jump = {def = 50,max = 500, min = 0}
}

--[[
configTool["speed"]["min"]
configTool["speed"]["max"]
configTool["speed"]["def"]
]]

P:AddButton("Finish Race V1",function()
Race_Cheat()
end)

P:AddButton("Finish Race V2",function()
TP_Race()
end)

Re:AddSwitch("Rebirth", function(value)
    Rebirth = value
      
         while wait() do
         if Rebirth == false then break end
             game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
end
end)

--[[
local advanced = {}
local rare = {}
local basic = {}
local epic = {}
local unique = {}
local omega = {}						
]]

Main:AddSwitch("Farm Yellow Orb", function(value)
    Benesis = value
      
    while wait() do
        if Benesis == false then break end
        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
    end
end)

Main:AddSwitch("Farm Red Orb", function(value)
    Gajdgsis = value
      
    while wait() do
        if Gajdgsis == false then break end
        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
    end
end)

Main:AddSwitch("Farm Gems", function(value)
    Gajskha = value
      
    while wait() do
        if Gajskha == false then break end
        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
    end
end)

Main:AddSwitch("Auto Hoops", function(value)
    Gayajdhaia = value
      
         while wait() do
         if Gayajdhaia == false then break end
             for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
				firetouchinterest(v, game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, 0)
				wait()
				firetouchinterest(v, game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, 1)
end
end
end)

Tp:AddButton("City", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828, 74.8522873, 3099.03394, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
end)

Tp:AddButton("Snow", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.13867, 74.8522873, 3782.69385, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)

Tp:AddButton("Magma", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.9688, 232.791656, 4898.62842, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
end)

Tp:AddButton("Legends Highway", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.8711, 232.791656, 5907.62793, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
end)

local balls = Egg:AddDropdown("Select Eggs",function(object)
    _G.EggType = object
end)

balls:Add("Red Crystal")
balls:Add("Purple Crystal")
balls:Add("Yellow Crystal")
balls:Add("Lightning Crystal")
balls:Add("Snow Crystal")
balls:Add("Inferno Crystal")
balls:Add("Electro Legends Crystal")
balls:Add("Space Crystal")
balls:Add("Alien Crystal")
balls:Add("Desert Crystal")
-- balls:Add("")

Egg:AddSwitch("Auto Hatch",function(value)
    Egg1 = value
      
         while wait() do
         if Egg1 == false then break end
             game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal",_G.EggType)
end
end)

local citys = S:AddDropdown("Select Pet",function(object)
    _G.PetType = object
end)

citys:Add("<!----Advanced---->")
AddSystem(#advanced,function(i)
	citys:Add(advanced[i])
end)

citys:Add("<!----Rare---->")
AddSystem(#rare,function(i)
	citys:Add(rare[i])
end)

citys:Add("<!----Basic---->")
AddSystem(#basic,function(i)
	citys:Add(basic[i])
end)

citys:Add("<!----Epic---->")
AddSystem(#epic,function(i)
	citys:Add(epic[i])
end)

citys:Add("<!----Unique---->")
AddSystem(#unique,function(i)
	citys:Add(unique[i])
end)

citys:Add("<!----Omega---->")
AddSystem(#omega,function(i)
	citys:Add(omega[i])
end)

S:AddButton("Evolve", function()
game:GetService("ReplicatedStorage")["rEvents"]["petEvolveEvent"]:FireServer("evolvePet",_G.PetType)
end)

S:AddButton("Sell", function()
game:GetService("ReplicatedStorage")["rEvents"]["sellPetEvent"]:FireServer("sellPet",_G.PetType)
end)
