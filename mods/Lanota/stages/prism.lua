function onCreate()
	makeLuaSprite('prism_bg', 'prism_bg', -1000, -100);
	setScrollFactor('prism_bg', 1, 1);

	addLuaSprite('prism_bg', false);
	scaleObject('prism_bg', 0.9, 0.9);

	close(true); 
end