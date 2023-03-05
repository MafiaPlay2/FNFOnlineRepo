function onBeatHit()

	if curBeat == 368 then
		doTweenAlpha('spooky', 'bg', 0.15, 1, 'linear')
	end
	
	if curBeat == 424 then
		doTweenAlpha('unspooky', 'bg', 1, 1, 'linear')
	end
end