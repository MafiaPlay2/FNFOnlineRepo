function onCreate()
	makeLuaSprite('androb_bg', 'androb_bg', -500, -80);
	setScrollFactor('androb_bg', 1, 1);

	addLuaSprite('androb_bg', false);
	scaleObject('androb_bg', 1.05, 1.05);

	close(true); 
end