function onBeatHit()

	if curBeat == 572 then
		doTweenAlpha('fade', 'bgB', 1.0, 0.2, 'quadIn')
		doTweenAlpha('byebye', 'camHUD', 0, 1.2, 'quadInOut')
	end
end
	