function opponentNoteHit()

	
    health = getProperty('health')
	if noteType == 'Alt Animation' or altAnim and getProperty('health') > 0.05 then
        setProperty('health', health- 0.016);
    end
end