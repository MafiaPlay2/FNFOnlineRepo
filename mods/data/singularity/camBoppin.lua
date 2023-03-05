function onBeatHit()
	
	if curBeat > 136 and curBeat < 456 then
	triggerEvent('Add Camera Zoom', 0.025, 0.03)
	end
	
	if curBeat > 456 and curBeat < 520 then
	triggerEvent('Add Camera Zoom', 0.035, 0.05)
	end
	
	
	if curBeat > 520 and curBeat < 584 then
	triggerEvent('Add Camera Zoom', 0.025, 0.03)
	end
	
	if curBeat > 584 and curBeat < 714 then
	triggerEvent('Add Camera Zoom', 0.035, 0.05)
	end
	
	if curBeat > 714 then
	triggerEvent('Add Camera Zoom', 0 , 0)
	end
end
	
	
