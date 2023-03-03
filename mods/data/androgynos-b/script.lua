function onUpdate(elapsed)
for i=0,3 do
noteTweenAlpha(i+16, i, math.floor(curStep/9999), 0.3)
noteTweenAlpha(i+16, i, math.floor(curStep/9999), 4-7)
noteTweenX("NoteMove1", 0, -1000, 0.5, cubeInOut)
noteTweenX("NoteMove2", 1, -1000, 0.5, cubeInOut)
noteTweenX("NoteMove3", 2, -1000, 0.5, cubeInOut)
noteTweenX("NoteMove4", 3, -1000, 0.5, cubeInOut)
end
end