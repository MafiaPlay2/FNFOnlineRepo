function onBeatHit()

	if curBeat == 340 then
	setProperty('bg6.visible', true)
	setProperty('bg2.visible', false)
	end
	
	if curBeat == 368 then
	getProperty('bg6.visible')
	setProperty('bg6.visible', false)
	end
	
	if curBeat == 424 then
	getProperty('bg6.visible')
	setProperty('bg6.visible', true)
	end
end
	