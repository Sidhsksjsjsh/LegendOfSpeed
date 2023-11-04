local fnl = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Sidhsksjsjsh/Focats-Notify-Lib/main/.lua'))()
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
local CrystalFolder = {}

local function children(a,virtual)
for _,v in pairs(a:GetChildren()) do
virtual(v)
end
end

local function Shitty(str,value)
for _,v in pairs(str:GetDescendants()) do
	value(v)
end
end

local function insert(str,localName)
table.insert(localName,str)
end

children(game:GetService("Workspace").mapCrystalsFolder,function(v)
	insert(v.Name,CrystalFolder)
end)

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


local function touch(first)
firetouchinterest(first,self_ind.Character.HumanoidRootPart,0)
wait()
firetouchinterest(first,self_ind.Character.HumanoidRootPart,1)
end

-- game:GetService("Workspace").raceMaps.finishPart
local function Race_Cheat()
Shitty(game:GetService("Workspace"),function(v)
if v.Name == "finishPart" then
touch(v)
end
end)
end

local function TP_Race()
Shitty(game:GetService("Workspace"),function(v)
if v.Name == "finishPart" then
self_ind.Character.HumanoidRootPart.CFrame = v.Position
end
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

local function getText(str)
	return str.Text
end

local function editText(str,value)
	str.Text = value
end

local Main = Window:AddTab("Main")
local Tp = Window:AddTab("Teleport")
local Re = Window:AddTab("Protection")
local Egg = Window:AddTab("Egg")
local P = Window:AddTab("Race")
--local S = Window:AddTab("Pet")
local gu = Window:AddTab("Game UI")


local function IrisNotify(title,text,dur)
  title = title or "Notification"
  text = text or "No text provided."
  dur = dur or 5
  
  fnl:MakeNotification({
    Title = title,
    Text = text,
    Duration = dur
  })
end

local configTool = {
	speed = {def = 16,max = 200,min = 0},
	jump = {def = 50,max = 500, min = 0}
}

--[[
local args = {
    [1] = "sendTradeRequest",
    [2] = game:GetService("Players")["erichkie30"]
}

game:GetService("ReplicatedStorage")["rEvents"]["tradingEvent"]:FireServer(unpack(args))
local args = {
    [1] = "offerItem",
    [2] = game:GetService("Players").LocalPlayer:FindFirstChild("Ultimate Overdrive Bunny")
}

game:GetService("ReplicatedStorage")["rEvents"]["tradingEvent"]:FireServer(unpack(args))
local args = {
    [1] = "equipTrail",
    [2] = game:GetService("Players").LocalPlayer:FindFirstChild("1st Trail")
}

game:GetService("Players").LocalPlayer["equipTrailEvent"]:FireServer(unpack(args))
function getNil(name,class) for _,v in next, getnilinstances() do if v.ClassName==class and v.Name==name then return v;end end end

local args = {
    [1] = "sellTrail",
    [2] = getNil("Rainbow Steps", "Trail")
}

game:GetService("ReplicatedStorage")["rEvents"]["sellTrailEvent"]:FireServer(unpack(args))
game:GetService("ReplicatedStorage")["rEvents"]["getServerTimeRemote"]:InvokeServer()
game:GetService("ReplicatedStorage")["rEvents"]["petEvolveEvent"]:FireServer("evolvePet",_G.PetType)
game:GetService("ReplicatedStorage")["rEvents"]["sellPetEvent"]:FireServer("sellPet",_G.PetType)
game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal",_G.EggType)
local args = {
    [1] = "requestAccepted",
    [2] = game:GetService("Players")["CookieProgamming"]
}

game:GetService("ReplicatedStorage")["rEvents"]["tradingEvent"]:FireServer(unpack(args))

]]

local Protection = {
	Trade = false,
	InputPet = false,
	SellTrail = false,
	EquipTrail = false,
	ServerTime = false,
	EquipPets = false,
	SellPet = false,
	Evolved = false,
	Egg = false,
	Accepted = false
}

local SystemProtector = nil
SystemProtector = hookmetamethod(game, "__namecall", function(self, ...)
    local Args = {...}
        if self.Name == "tradingEvent" and Args[1] == "sendTradeRequest" and Protection.Trade == true then
                return 
        end
	if self.Name == "tradingEvent" and Args[1] == "offerItem" and Protection.InputPet == true then
                return 
	end
	if self.Name == "equipTrailEvent" and Args[1] == "equipTrail" and Protection.EquipTrail == true then
                return 
	end
	if self.Name == "sellTrailEvent" and Args[1] == "sellTrail" and Protection.SellTrail == true then
                return 
	end
	if self.Name == "sellPetEvent" and Args[1] == "sellPet" and Protection.SellPet == true then
                return 
	end
	if self.Name == "petEvolveEvent" and Args[1] == "evolvePet" and Protection.Evolved == true then
                return 
	end
	if self.Name == "openCrystalRemote" and Args[1] == "openCrystal" and Protection.Egg == true then
                return 
	end
	if self.Name == "tradingEvent" and Args[1] == "requestAccepted" and Protection.Accepted == true then
                return 
	end
    return SystemProtector(self, unpack(Args))
end)

local SystemProtectorV2 = nil
SystemProtector = hookmetamethod(game, "__namecall", function(self, ...)
    local Args = {...}
        if self.Name == "tradingEvent" and Args[1] == "sendTradeRequest" and Protection.Trade == true then
                IrisNotify("Script blocked (" .. tostring(self.Name) .. ")","Remote '" .. tostring(self.Name) .. "' & '" .. tostring(Args[1]) .. "' blocked, unable to call Service 'ReplicatedStorage'.",7)
        end
	if self.Name == "tradingEvent" and Args[1] == "offerItem" and Protection.InputPet == true then
                IrisNotify("Script blocked (" .. tostring(self.Name) .. ")","Remote '" .. tostring(self.Name) .. "' & '" .. tostring(Args[1]) .. "' blocked, unable to call Service 'ReplicatedStorage'.",7)
	end
	if self.Name == "equipTrailEvent" and Args[1] == "equipTrail" and Protection.EquipTrail == true then
                IrisNotify("Script blocked (" .. tostring(self.Name) .. ")","Remote '" .. tostring(self.Name) .. "' & '" .. tostring(Args[1]) .. "' blocked, unable to call Service 'ReplicatedStorage'.",7)
	end
	if self.Name == "sellTrailEvent" and Args[1] == "sellTrail" and Protection.SellTrail == true then
                IrisNotify("Script blocked (" .. tostring(self.Name) .. ")","Remote '" .. tostring(self.Name) .. "' & '" .. tostring(Args[1]) .. "' blocked, unable to call Service 'ReplicatedStorage'.",7)
	end
	if self.Name == "sellPetEvent" and Args[1] == "sellPet" and Protection.SellPet == true then
                IrisNotify("Script blocked (" .. tostring(self.Name) .. ")","Remote '" .. tostring(self.Name) .. "' & '" .. tostring(Args[1]) .. "' blocked, unable to call Service 'ReplicatedStorage'.",7)
	end
	if self.Name == "petEvolveEvent" and Args[1] == "evolvePet" and Protection.Evolved == true then
                IrisNotify("Script blocked (" .. tostring(self.Name) .. ")","Remote '" .. tostring(self.Name) .. "' & '" .. tostring(Args[1]) .. "' blocked, unable to call Service 'ReplicatedStorage'.",7)
	end
	if self.Name == "openCrystalRemote" and Args[1] == "openCrystal" and Protection.Egg == true then
                IrisNotify("Script blocked (" .. tostring(self.Name) .. ")","Remote '" .. tostring(self.Name) .. "' & '" .. tostring(Args[1]) .. "' blocked, unable to call Service 'ReplicatedStorage'.",7)
	end
	if self.Name == "tradingEvent" and Args[1] == "requestAccepted" and Protection.Accepted == true then
                IrisNotify("Script blocked (" .. tostring(self.Name) .. ")","Remote '" .. tostring(self.Name) .. "' & '" .. tostring(Args[1]) .. "' blocked, unable to call Service 'ReplicatedStorage'.",7)
	end
    return SystemProtectorV2(self, unpack(Args))
end)

Re:AddSwitch("Anti-Trade", function(value)
    Protection.Trade = value
end)

Re:AddSwitch("Anti-Add Pet [Trading]", function(value)
    Protection.InputPet = value
end)

Re:AddSwitch("Anti-Sell Trail", function(value)
    Protection.SellTrail = value
end)

Re:AddSwitch("Anti-Equip Trail", function(value)
    Protection.EquipTrail = value
end)

Re:AddSwitch("Anti-Sell Pets", function(value)
    Protection.SellPet = value
end)

Re:AddSwitch("Anti-Evolve Pet", function(value)
    Protection.Evolved = value
end)

Re:AddSwitch("Anti-Open Crystal", function(value)
    Protection.Egg = value
end)

Re:AddSwitch("Anti-Accepted [Request Trading]", function(value)
    Protection.Accepted = value
end)

--[[
configTool["speed"]["min"]
configTool["speed"]["max"]
configTool["speed"]["def"]
]]

P:AddSwitch("Auto Join Race", function(value)
	JoinRace = value
	while wait() do
		if JoinRace == false then break end
			game:GetService("ReplicatedStorage")["rEvents"]["raceEvent"]:FireServer("joinRace")
	end
end)

P:AddSwitch("Auto Finish Race", function(value)
	Finish = value
	while wait() do
		if Finish == false then break end
			Race_Cheat()
	end
end)

gu:AddTextBox("Input Fake Level", function(str)
editText(self_ind.PlayerGui.gameGui.statsFrame.levelLabel,str)
end)

gu:AddTextBox("Input Fake EXP", function(str)
editText(self_ind.PlayerGui.gameGui.statsFrame.expLabel,str)
end)

gu:AddTextBox("Input Fake Speed", function(str)
editText(self_ind.PlayerGui.gameGui.statsFrame.speedLabel,str)
end)

gu:AddTextBox("Input Fake Race", function(str)
editText(self_ind.PlayerGui.gameGui.statsFrame.racesLabel,str)
end)

gu:AddButton("Remove Race Invite",function()
self_ind.PlayerGui.gameGui.raceJoinLabel:Destroy()
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
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Yellow Orb",getValue(self_ind.currentMap))
    end
end)

Main:AddSwitch("Farm Red Orb", function(value)
    Gajdgsis = value
      
    while wait() do
        if Gajdgsis == false then break end
        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Red Orb",getValue(self_ind.currentMap))
    end
end)

Main:AddSwitch("Farm Orange Orb", function(value)
	OrangeOrbs = value

	while wait() do
		if OrangeOrbs == false then break end
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Orange Orb",getValue(self_ind.currentMap))
	end
end)

Main:AddSwitch("Farm Blue Orb", function(value)
	BlueOrbs = value
	while wait() do
		if BlueOrbs == false then break end
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
			game:GetService("ReplicatedStorage")["rEvents"]["orbEvent"]:FireServer("collectOrb","Blue Orb",getValue(self_ind.currentMap))
	end
end)

Main:AddSwitch("Farm Gems", function(value)
    Gajskha = value
      
    while wait() do
        if Gajskha == false then break end
        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
	game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb","Gem",getValue(self_ind.currentMap))
    end
end)

Main:AddSwitch("Auto Hoops", function(value)
    Gayajdhaia = value
      
         while wait() do
         if Gayajdhaia == false then break end
             for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
				firetouchinterest(v,game:GetService('Players').LocalPlayer.Character.HumanoidRootPart,0)
				wait()
				firetouchinterest(v,game:GetService('Players').LocalPlayer.Character.HumanoidRootPart,1)
end
end
end)

Main:AddSwitch("Rebirth", function(value)
    Rebirth = value
      
         while wait() do
         if Rebirth == false then break end
             game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
end
end)

Tp:AddButton("City", function()
self_ind.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828, 74.8522873, 3099.03394, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
end)

Tp:AddButton("Snow", function()
self_ind.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.13867, 74.8522873, 3782.69385, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)

Tp:AddButton("Magma", function()
self_ind.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.9688, 232.791656, 4898.62842, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
end)

Tp:AddButton("Legends Highway", function()
self_ind.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.8711, 232.791656, 5907.62793, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
end)

Tp:AddButton("Pirate Course", function()
self_ind.Character.HumanoidRootPart.CFrame = CFrame.new(-926, 27, 2823)
wait(1)
self_ind.Character.HumanoidRootPart.CFrame = CFrame.new(-1605, 102, 5657)
end)

Tp:AddButton("Speed Desert [ Different Game ]", function()
game:GetService('TeleportService'):Teleport(3276265788)
end)

Tp:AddButton("Space [ Different Game ] [ 50 Race ]", function()
game:GetService('TeleportService'):Teleport(3232996272)
end)

Tp:AddButton("Back To City [ Different Game ]", function()
game:GetService('TeleportService'):Teleport(3101667897)
end)

local balls = Egg:AddDropdown("Select Eggs",function(object)
    _G.EggType = object
end)

--[[balls:Add("Red Crystal")
balls:Add("Purple Crystal")
balls:Add("Yellow Crystal")
balls:Add("Lightning Crystal")
balls:Add("Snow Crystal")
balls:Add("Inferno Crystal")
balls:Add("Electro Legends Crystal")
balls:Add("Space Crystal")
balls:Add("Alien Crystal")
balls:Add("Desert Crystal")
]]

AddSystem(#CrystalFolder,function(i)
	balls:Add(CrystalFolder[i])
end)

Egg:AddSwitch("Auto Hatch",function(value)
    Egg1 = value
      
         while wait() do
         if Egg1 == false then break end
             game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal",_G.EggType)
end
end)
--[[
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
]]
