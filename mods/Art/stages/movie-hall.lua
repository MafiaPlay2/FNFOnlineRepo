function onCreate()
	makeLuaSprite('backgroundMain', 'background', -1500, -700)
	scaleObject('backgroundMain', 0.4, 0.4)
	addLuaSprite('backgroundMain', false)

	makeLuaSprite('lights', 'middleground', -400, -80)
	scaleObject('lights', 1.2, 1.2)
	setScrollFactor('lights', 1, 0)
	addLuaSprite('lights', true)

	makeLuaSprite('rails', 'foreground', -250, -240)
	scaleObject('rails', 1.34, 1.34)
	setScrollFactor('rails', 1, 0)
	addLuaSprite('rails', true)

	makeAnimatedLuaSprite('crowd', 'crowdBop', -1100, -360)
	scaleObject('crowd', 1.4, 1.4)
	setScrollFactor('crowd', 1.5, 0)
	addAnimationByPrefix('crowd', 'bop', 'crowdbop', 24, false)
	addLuaSprite('crowd', true)
end

function onBeatHit()
	objectPlayAnimation('crowd', 'bop')
end