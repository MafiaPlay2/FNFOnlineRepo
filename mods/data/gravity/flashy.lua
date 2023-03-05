function onBeatHit()

	
	if curBeat >= 48 and curBeat < 80 then
		triggerEvent('Add Camera Zoom', '0.017', '0.05')
	end
	
	if curBeat >= 176 and curBeat < 208 then
		triggerEvent('Add Camera Zoom', '0.017', '0.05')
	end



	if curBeat == 340 then
	runTimer('bg5', 0.3)
	objectPlayAnimation('bg5','break1',true);
	cameraShake('game',0.005, 0.5)
	cameraShake('hud',0.003, 0.5)
	end
	
	if curBeat == 340 then
	doTweenZoom('zum','camGame', 0.75, 2.1, 'quadOut')
	end
	
	if curBeat == 345 then
	doTweenAlpha('hola', 'camHUD', 1, 1.1, 'linear')
	end
	
	
	if curbeat == 526 then
	cameraShake('game',0.003, 1.5)
	end
	
	
	if curBeat == 528 then
	objectPlayAnimation('bg5', 'break2',true)
	cameraShake('game',0.006, 0.5)
	cameraShake('hud',0.003, 0.5)
	end
	
	if curBeat == 564 then
	doTweenZoom('camz','camGame', 1.0, 4.2, 'quadIn')
	end
end

function onStepHit()

	if curStep == 1359 then
		cameraFlash('game', 'FFFFFF', 1.8)
		doTweenAlpha('gone','camHUD', 0, 000000000.1, 'quadOut')
	end
end
