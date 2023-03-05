function onEvent(name, value1, value2)
	if name == 'Replace stage layer fade' then
		stage1 = value1;
        doTweenAlpha('stageAppear', stage1, 1, 0.8, 'quadInOut');
		stage2 = value2;
		doTweenAlpha('stageGone', stage2, 0, 0.0, 'quadInOut');
	end
end