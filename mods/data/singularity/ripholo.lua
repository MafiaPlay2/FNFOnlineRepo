local spin_loop_counter = 0

function onCreatePost()
	doTweenAngle("spin_loop" .. spin_loop_counter, "bg2", 360, 15, "linear")
end

function onTweenCompleted(tag)
	if string.find(tag, "spin_loop") then
		spin_loop_counter = spin_loop_counter + 1
		setProperty("bg2.angle", 0)
		doTweenAngle("spin_loop" .. spin_loop_counter, "bg2", 360, 15, "linear")
	end
end