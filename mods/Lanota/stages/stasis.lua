function onCreate()
	makeLuaSprite('stasis_bg', 'stasis_bg', 100, 250);
	setScrollFactor('stasis_bg', 1, 1);

	addLuaSprite('stasis_bg', false);
	scaleObject('stasis_bg', 0.55, 0.55);

	close(true); 
end