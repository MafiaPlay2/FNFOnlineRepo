function onBeatHit()
	
	getProperty('bg10.visible')
	
	if curBeat == 136 then
	doTweenAlpha('appear', 'bg10', 0.8, 00000000.1, 'linear')
	end
	
	if curBeat == 584 then
	doTweenAlpha('vanish', 'bg10', 0, 0000000.1, 'linear')
	end
	
end
	