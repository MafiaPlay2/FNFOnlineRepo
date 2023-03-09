function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Trick Only' then
			--setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_retrobf'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id,d,t,s)
	
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
--function noteMiss(id, noteData, noteType, isSustainNote)
	--if noteType == 'Op2' then
		-- put something here if you want
	--end
--end

function opponentNoteHit(id,d,t,s)
	
end