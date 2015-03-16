-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

--[[
	這個範例解說如何在畫面上顯示文字，以及如何使用自訂的中文字型
	Author: Zack Lin
	Time: 2015/3/12
]]
_SCREEN = {
	HEIGHT = display.contentHeight,
	WIDTH = display.contentWidth
}


_SCREEN.CENTER = {
	x = display.contentCenterX,
	y = display.contentCenterY
}

display.setStatusBar( display.HiddenStatusBar )

--使用預設字型顯示Hello World，字體大小為40
local text = display.newText(  "Hello World", 0 , 0  , system.nativeFont, 40 )
text.x = _SCREEN.CENTER.x
text.y = _SCREEN.CENTER.y - 100

--使用自行準備的華康少女自体來顯示中文字
--宣告一個字型參考，使用字型檔名，去掉副檔名
local font_girl = "華康少女字体" or system.nativeFont
local text1 = display.newText( "你好，全世界!", 0, 0, font_girl , 50)
text1.x = _SCREEN.CENTER.x
text1.y = _SCREEN.CENTER.y