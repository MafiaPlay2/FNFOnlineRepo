function onCreate()
	-- background shit
	makeLuaSprite('stage', 'stage', -600, -300);
	setScrollFactor('stage', 1, 1);

	addLuaSprite('stage', false);
	
	close(true);
end