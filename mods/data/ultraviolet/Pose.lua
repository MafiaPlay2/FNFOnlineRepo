function onBeatHit()


	if curBeat >= 352 and curBeat < 353 then
	characterPlayAnim('dad','Pose', true, false, 0)
	end
	

	if curBeat == 352 then
		doTweenZoom('zoomyz','camGame',0.95, 0.6, 'expoOut')
	end
	
	if curBeat >= 353 and curBeat < 354 then
	characterPlayAnim('dad','PoseWink', true, false, 0)
	end
end
	