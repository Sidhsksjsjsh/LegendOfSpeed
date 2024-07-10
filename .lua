--[[local library = loadstring(game:HttpGet("https://pastebin.com/raw/Uub92rmN"))()

local Window = library:AddWindow("VIP Turtle Hub V5 - Cheating Tool | Legends Of Speed ⚡",
    {
        main_color = Color3.fromRGB(170, 0, 0),
        min_size = Vector2.new(373, 433),
        toggle_key = Enum.KeyCode.RightShift,
    })
]]

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sidhsksjsjsh/VAPE-UI-MODDED/main/.lua"))()
local wndw = lib:Window("VIP Turtle Hub V4")

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
	lib:descendant(game:GetService("Workspace"),function(v)
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

local Main = wndw:Tab("Main") --Window:AddTab("Main")
local Tp = wndw:Tab("Teleport") --Window:AddTab("Teleport")
local Re = wndw:Tab("Protection") --Window:AddTab("Protection")
local Egg = wndw:Tab("Egg") --Window:AddTab("Egg")
local P = wndw:Tab("Race") --Window:AddTab("Race")
--local S = Window:AddTab("Pet")
local gu = wndw:Tab("Game UI") --Window:AddTab("Game UI")


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

-- from Server to Client:
local mt = getrawmetatable(game);
setreadonly(mt,false)
local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
	local Method = getnamecallmethod()
	local Args = {...}

	if self.Name == "tradingEvent" and Args[1] == "sendTradeRequest" and Protection.Trade == true then
		lib:notify(lib:ColorFonts(lib:ColorFonts("Remote '" .. tostring(self.Name) .. "' & '" .. tostring(Args[1]) .. "' blocked, unable to call Service 'ReplicatedStorage'.","Bold"),"Red"),10)
                return 
        end
	if self.Name == "tradingEvent" and Args[1] == "offerItem" and Protection.InputPet == true then
		lib:notify(lib:ColorFonts(lib:ColorFonts("Remote '" .. tostring(self.Name) .. "' & '" .. tostring(Args[1]) .. "' blocked, unable to call Service 'ReplicatedStorage'.","Bold"),"Red"),10)
                return 
	end
	if self.Name == "equipTrailEvent" and Args[1] == "equipTrail" and Protection.EquipTrail == true then
		lib:notify(lib:ColorFonts(lib:ColorFonts("Remote '" .. tostring(self.Name) .. "' & '" .. tostring(Args[1]) .. "' blocked, unable to call Service 'ReplicatedStorage'.","Bold"),"Red"),10)
                return 
	end
	if self.Name == "sellTrailEvent" and Args[1] == "sellTrail" and Protection.SellTrail == true then
		lib:notify(lib:ColorFonts(lib:ColorFonts("Remote '" .. tostring(self.Name) .. "' & '" .. tostring(Args[1]) .. "' blocked, unable to call Service 'ReplicatedStorage'.","Bold"),"Red"),10)
                return 
	end
	if self.Name == "sellPetEvent" and Args[1] == "sellPet" and Protection.SellPet == true then
		lib:notify(lib:ColorFonts(lib:ColorFonts("Remote '" .. tostring(self.Name) .. "' & '" .. tostring(Args[1]) .. "' blocked, unable to call Service 'ReplicatedStorage'.","Bold"),"Red"),10)
                return 
	end
	if self.Name == "petEvolveEvent" and Args[1] == "evolvePet" and Protection.Evolved == true then
		lib:notify(lib:ColorFonts(lib:ColorFonts("Remote '" .. tostring(self.Name) .. "' & '" .. tostring(Args[1]) .. "' blocked, unable to call Service 'ReplicatedStorage'.","Bold"),"Red"),10)
                return 
	end
	if self.Name == "tradingEvent" and Args[1] == "requestAccepted" and Protection.Accepted == true then
		lib:notify(lib:ColorFonts(lib:ColorFonts("Remote '" .. tostring(self.Name) .. "' & '" .. tostring(Args[1]) .. "' blocked, unable to call Service 'ReplicatedStorage'.","Bold"),"Red"),10)
                return 
	end
	return namecall(self, ...) 
end)

-- from Client to Client
local SystemProtector = nil
SystemProtector = hookmetamethod(game, "__namecall", function(self, ...)
    local Args = {...}
        if self.Name == "openCrystalRemote" and Args[1] == "openCrystal" and Protection.Egg == true then
		lib:notify(lib:ColorFonts(lib:ColorFonts("Remote '" .. tostring(self.Name) .. "' & '" .. tostring(Args[1]) .. "' blocked, unable to call Service 'ReplicatedStorage'.","Bold"),"Red"),10)
                return 
	end
    return SystemProtector(self,unpack(Args))
end)

Re:Toggle("Anti-trade",false,function(value)
    Protection.Trade = value
end)

Re:Toggle("Anti-add pet [ trading ]",false,function(value)
    Protection.InputPet = value
end)

Re:Toggle("Anti-sell trail",false,function(value)
    Protection.SellTrail = value
end)

Re:Toggle("Anti-equip trail",false,function(value)
    Protection.EquipTrail = value
end)

Re:Toggle("Anti-sell pet",false,function(value)
    Protection.SellPet = value
end)

Re:Toggle("Anti-evolve pet",false,function(value)
    Protection.Evolved = value
end)

Re:Toggle("Anti-open crystal",false,function(value)
    Protection.Egg = value
end)

Re:Toggle("Anti-accept trade request",false,function(value)
    Protection.Accepted = value
end)

--[[
configTool["speed"]["min"]
configTool["speed"]["max"]
configTool["speed"]["def"]
]]

local MaxJoin = 0
local function JoinRaces() -- Simple Logic
if not MaxJoin > 0 then
	game:GetService("ReplicatedStorage")["rEvents"]["raceEvent"]:FireServer("joinRace")
	MaxJoin = 1
elseif self_ind.PlayerGui.gameGui.raceJoinLabel.Visible == true then
	MaxJoin = 0
end
end
--[[
for m,n in pairs(getconnections(j["PlayerGui"]["UniversalGui"]["UniversalCenterUIFrame"]["SlotsHolder"]["Skill1"].MouseButton1Click)) do
        n:Fire()
end
]]
P:Toggle("Auto join race",false,function(value)
	JoinRace = value
	while wait() do
		if JoinRace == false then break end
			if self_ind["PlayerGui"]["gameGui"]["raceJoinLabel"]["Visible"] == true then
				game:GetService("ReplicatedStorage")["rEvents"]["raceEvent"]:FireServer("joinRace")
			end
	end
end)

P:Toggle("Auto win race",false,function(value)
	Finish = value
	while wait() do
		if Finish == false then break end
			Race_Cheat()
	end
end)

gu:Button("Destroy race invite interface",function()
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

Main:Toggle("Auto farm yellow orbs [ X50 ]",false,function(value)
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

Main:Toggle("Auto farm red orbs [ X50 ]",false,function(value)
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

Main:Toggle("Auto farm orange orbs [ X50 ]",false,function(value)
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

Main:Toggle("Auto farm blue orbs [ X50 ]",false,function(value)
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

Main:Toggle("Auto farm gems [ X50 ]",false,function(value)
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

Main:Toggle("Auto hoops",false,function(value)
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

Main:Toggle("Auto rebirth",false,function(value)
    Rebirth = value
      
         while wait() do
         if Rebirth == false then break end
             game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
end
end)

Tp:Button("City",function()
	self_ind.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828, 74.8522873, 3099.03394, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
end)

Tp:Button("Snow",function()
	self_ind.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.13867, 74.8522873, 3782.69385, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)

Tp:Button("Magma",function()
	self_ind.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.9688, 232.791656, 4898.62842, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
end)

Tp:Button("Legends Highway",function()
	self_ind.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.8711, 232.791656, 5907.62793, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
end)

Tp:Button("Pirate Course",function()
	self_ind.Character.HumanoidRootPart.CFrame = CFrame.new(-926, 27, 2823)
	wait(1)
	self_ind.Character.HumanoidRootPart.CFrame = CFrame.new(-1605, 102, 5657)
end)

--[[Tp:Button("Speed Desert [ Different Game ]",function()
	library:OnTeleport("https://raw.githubusercontent.com/Sidhsksjsjsh/LegendOfSpeed/main/.lua")
	game:GetService('TeleportService'):Teleport(3276265788)
end)

Tp:Button("Space [ Different Game ] [ 50 Race ]",function()
	library:OnTeleport("https://raw.githubusercontent.com/Sidhsksjsjsh/LegendOfSpeed/main/.lua")
	game:GetService('TeleportService'):Teleport(3232996272)
end)

Tp:Button("Back to city",function()
	library:OnTeleport("https://raw.githubusercontent.com/Sidhsksjsjsh/LegendOfSpeed/main/.lua")
	game:GetService('TeleportService'):Teleport(3101667897)
end)]]

if game.PlaceId == 3101667897 then -- city
	Tp:Button("Speed Desert [ Different Game ]",function()
		lib:Queue_On_Teleport("https://raw.githubusercontent.com/Sidhsksjsjsh/LegendOfSpeed/main/.lua")
		game:GetService('TeleportService'):Teleport(3276265788)
	end)
	Tp:Button("Space [ Different Game ] [ 50 Race ]",function()
		lib:Queue_On_Teleport("https://raw.githubusercontent.com/Sidhsksjsjsh/LegendOfSpeed/main/.lua")
		game:GetService('TeleportService'):Teleport(3232996272)
	end)
elseif game.PlaceId == 3276265788 then -- Speed Desert
	Tp:Button("Space [ Different Game ] [ 50 Race ]",function()
		lib:Queue_On_Teleport("https://raw.githubusercontent.com/Sidhsksjsjsh/LegendOfSpeed/main/.lua")
		game:GetService('TeleportService'):Teleport(3232996272)
	end)
	Tp:Button("Back to city",function()
		lib:Queue_On_Teleport("https://raw.githubusercontent.com/Sidhsksjsjsh/LegendOfSpeed/main/.lua")
		game:GetService('TeleportService'):Teleport(3101667897)
	end)
elseif game.PlaceId == 3232996272 then -- Space
	Tp:Button("Back to city",function()
		lib:Queue_On_Teleport("https://raw.githubusercontent.com/Sidhsksjsjsh/LegendOfSpeed/main/.lua")
		game:GetService('TeleportService'):Teleport(3101667897)
	end)
	Tp:Button("Speed Desert [ Different Game ]",function()
		lib:Queue_On_Teleport("https://raw.githubusercontent.com/Sidhsksjsjsh/LegendOfSpeed/main/.lua")
		game:GetService('TeleportService'):Teleport(3276265788)
	end)
end

local eggname = ""
Egg:Dropdown("Select eggs",CrystalFolder,function(value)
    eggname = value
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

Egg:Toggle("Auto hatch",false,function(value)
    Egg1 = value
      
         while wait() do
         if Egg1 == false then break end
             game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal",eggname)
end
end)

lib.DeveloperEncrypt(wndw)
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
