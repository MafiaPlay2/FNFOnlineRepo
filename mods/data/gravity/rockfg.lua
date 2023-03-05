
function onUpdate(elapsed)

  if curStep >= 0 then

    songPos = getSongPosition()

    local currentBeat = (songPos/2000)*(bpm/180)

    doTweenY('rockfgTweenY', 'fg2', -160-65*math.sin((currentBeat*0.29)*math.pi),2.9)

  end

end
