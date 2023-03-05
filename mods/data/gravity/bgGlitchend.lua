function onBeatHit()

	if curBeat == 570 then

	makeAnimatedLuaSprite('fg3','bgGlitch',-820,-680)
	setScrollFactor('fg3',0.3,0.3)
	addAnimationByPrefix('fg3','idle','Glitch FX', 10, true)
	scaleObject('fg3', 1.1,1.1)
	objectPlayAnimation('fg3','Glitch FX', true)
	addLuaSprite('fg3',false)
	end
end

  
  
  