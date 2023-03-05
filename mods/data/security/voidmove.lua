 function onUpdate(elapsed)    if curStep == 0 then

        started = true

    end

songPos = getSongPosition()

local currentBeat = (songPos/5000)*(curBpm/180)

doTweenY('jetmove', 'bg4', -350-25*math.sin((currentBeat*1.99)*math.pi), 6.9)

end