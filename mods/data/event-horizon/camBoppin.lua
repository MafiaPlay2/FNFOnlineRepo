function onBeatHit()
	
	if curBeat > 8 and curBeat < 72 then
	triggerEvent('Add Camera Zoom', 0.014, 0.02)
	end
	
	if curBeat > 120 and curBeat < 392 then
	triggerEvent('Add Camera Zoom', 0.014, 0.02)
	end
	
	if curBeat >= 392 and curBeat < 456 then
	triggerEvent('Add Camera Zoom', 0.035, 0.05)
	end
end
	
	
