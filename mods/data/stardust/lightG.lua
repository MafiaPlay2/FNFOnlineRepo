
function onUpdate(elapsed)

  if curStep >= 0 then

    songPos = getSongPosition()

    local currentBeat = (songPos/2000)*(bpm/160)

    doTweenAngle('lightAngle2', 'bg4', -45*math.sin((currentBeat*0.5)*math.pi),1.5)

  end

end
