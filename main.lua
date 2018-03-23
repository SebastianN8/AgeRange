-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Sebastian N
-- Created on: March 23
--
-- This program determines who is allowed alone into a movie
-----------------------------------------------------------------------------------------

-- Visual elements
display.setDefault('background', 0.3, 0.2, 0.4)
local myTitle = display.newText('Are you allowed into movies?', display.contentCenterX, 200, native.SystemFont, 100)

-- The text field
local theTextField = native.newTextField(display.contentCenterX, 500, 500, 200)
theTextField.id = 'The age'

-- The initiation button
local myImage = display.newImageRect('./Assets/Sprites/enterButton.png', 350, 250)
myImage.x = display.contentCenterX + 500
myImage.y = 500
myImage.id = 'The button'

-- Result statement
local myResult = display.newText('', display.contentCenterX, 900, native.SystemFont, 100)

-- Function
local function ageRange(event)
	-- Variables
	local theAge = tonumber(theTextField.text)

	-- If statement
	if theAge >= 17 then
		myResult.text = ('You can go alone into R rated movies!')
	elseif theAge >= 13 then
		myResult.text = ('You can go alone into PG-13 rated movies!')
	else
		myResult.text = ('You can go into G rated movies!')
	end
end

-- Add event listener
myImage: addEventListener('touch', ageRange)
