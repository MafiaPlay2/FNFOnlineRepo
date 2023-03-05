 function onUpdate(elapsed)    if curStep == 0 then

        started = true

    end

songPos = getSongPosition()

local currentBeat = (songPos/5000)*(curBpm/180)

doTweenY('bopmoveAlt', 'bg6', -350-35*math.sin((currentBeat*1.99)*math.pi), 3.1)

end