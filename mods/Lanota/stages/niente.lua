function onCreate()
	makeLuaSprite('niente_bg', 'niente_bg', 0, 150);
	setScrollFactor('niente_bg', 1, 1);

	addLuaSprite('niente_bg', false);
	scaleObject('niente_bg', 0.8, 0.8);

	close(true); 
end