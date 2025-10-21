# hoverAnimationGUI
A simple and clean Roblox UI hover animation system — adds a smooth scaling effect and a hover sound when your cursor approaches buttons.
⚙️ How to Install

1. Open Roblox Studio
Go to the Explorer window → find StarterGui.
2. Create a new ScreenGui
Name it something like MainMenu.
3.Inside the ScreenGui, create 3 ImageButton objects (or any clickable GUI elements).
Example names:
ClickShop
ClickMenu
ClickSetting
4. Insert a LocalScript inside your MainMenu GUI.
(You can also use a normal Script, but LocalScript is recommended for UI.)
5. Copy and paste the entire HoverAnimation.lua code above into that script.
6. Test your game (F5)
Move your cursor over the buttons — they should smoothly enlarge with a hover sound 🎵.


🧠 Notes
Adjust the hover scale in the variable:
local hoverScale = 1.1 --
Replace the hover sound with your own by changing the soundId value.
Use AnchorPoint = 0.5, 0.5 on buttons so they scale from the center.
You can easily expand this script to include click animations too.
