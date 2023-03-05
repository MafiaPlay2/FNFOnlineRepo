function onBeatHit()

	if curBeat >= 337 and curBeat < 338 then
	playSound('BgBreak_Fade', 1, 0.9)
	end
	
	if curBeat >= 340 and curBeat < 341 then
	playSound('BgBreak', 1, 0.9)
	end
	
	if curBeat == 526 then
	playSound('BgBreak_Fade', 1, 0.7)
	end
	
	if curBeat == 528 then
	playSound('BgBreak', 1, 0.8)
	end
end