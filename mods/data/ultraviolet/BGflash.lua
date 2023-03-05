function onBeatHit()

	if curBeat == 16 then
		doTweenAlpha('flash1', 'bg4', 1.0, 0.2, 'expoOut')
		doTweenAlpha('flashFG1', 'fg3', 1.0, 0.2, 'expoOut')
	end
	
	if curBeat == 24 then
		doTweenAlpha('flash2', 'bg4', 0.0, 0.8, 'quadInOut')
		doTweenAlpha('flashFG2', 'fg3', 0.0, 0.8, 'quadInOut')
	end
	
	if curBeat == 64 then
		doTweenAlpha('flash3', 'bg4', 1.0, 0.2, 'expoOut')
		doTweenAlpha('flashFG3', 'fg3', 1.0, 0.2, 'expoOut')
	end
	
	if curBeat == 65 then
		doTweenAlpha('flash4', 'bg4', 0.0, 0.8, 'quadInOut')
		doTweenAlpha('flashFG4', 'fg3', 0.0, 0.8, 'quadInOut')
	end
	
	if curBeat == 128 then
		doTweenAlpha('flash5', 'bg4', 1.0, 0.2, 'expoOut')
		doTweenAlpha('flashFG5', 'fg3', 1.0, 0.2, 'expoOut')
	end
	
	if curBeat == 129 then
		doTweenAlpha('flash6', 'bg4', 0.0, 0.8, 'quadInOut')
		doTweenAlpha('flashFG6', 'fg3', 0.0, 0.8, 'quadInOut')
	end
	
	if curBeat == 160 then
		doTweenAlpha('flash7', 'bg4', 1.0, 0.2, 'expoOut')
		doTweenAlpha('flashFG7', 'fg3', 1.0, 0.2, 'expoOut')
	end
	
	if curBeat == 161 then
		doTweenAlpha('flash8', 'bg4', 0.0, 0.8, 'quadInOut')
		doTweenAlpha('flashFG8', 'fg3', 0.0, 0.8, 'quadInOut')
	end
	
	if curBeat == 292 then
		doTweenAlpha('flash9', 'bg4', 1.0, 0.2, 'expoOut')
		doTweenAlpha('flashFG9', 'fg3', 1.0, 0.2, 'expoOut')
	end
	
	if curBeat == 293 then
		doTweenAlpha('flash10', 'bg4', 0.0, 0.8, 'quadInOut')
		doTweenAlpha('flashFG10', 'fg3', 0.0, 0.8, 'quadInOut')
	end
	
	if curBeat == 321 then
		doTweenAlpha('flash11', 'bg4', 1.0, 0.2, 'expoOut')
		doTweenAlpha('flashFG11', 'fg3', 1.0, 0.2, 'expoOut')
	end
	
	if curBeat == 322 then
		doTweenAlpha('flash10', 'bg4', 0.0, 0.8, 'quadInOut')
		doTweenAlpha('flashFG10', 'fg3', 0.0, 0.8, 'quadInOut')
	end
end
function onUpdate()
	getProperty('bg4.alpha')
	getPorperty('fg3.alpha')
	
	if ('bg4.alpha') and ('fg3.alpha') == 1.0 then
		runTimer('halt', 0.1)
	end
end