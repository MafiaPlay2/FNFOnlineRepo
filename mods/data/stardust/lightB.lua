
function onUpdate(elapsed)

  if curStep >= 0 then

    songPos = getSongPosition()

    local currentBeat = (songPos/2000)*(bpm/160)

    doTweenAngle('lightAngle', 'bg3', 45*math.sin((currentBeat*0.4)*math.pi),1.4)

  end

end
