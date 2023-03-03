function onCreate()
	makeLuaSprite('backgroundMain', 'TossBG/background', -1500, -700)
	scaleObject('backgroundMain', 0.4, 0.4)
	addLuaSprite('backgroundMain', false)

	makeLuaSprite('lights', 'TossBG/middleground', -400, -80)
	scaleObject('lights', 1.2, 1.2)
	addLuaSprite('lights', true)

	makeLuaSprite('rails', 'TossBG/foreground', -250, -120)
	scaleObject('rails', 1.34, 1.34)
	addLuaSprite('rails', true)

	makeAnimatedLuaSprite('crowd', 'TossBG/crowdBop', -800, -240)
	scaleObject('crowd', 1.4, 1.4)
	addAnimationByPrefix('crowd', 'bop', 'TossBG/crowdbop', 24, false)
	addLuaSprite('crowd', true)
end

function onBeatHit()
	objectPlayAnimation('crowd', 'bop')
end