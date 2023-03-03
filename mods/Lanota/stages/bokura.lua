function onCreate()
	makeLuaSprite('bokura_bg', 'bokura_bg', -1250, -650);
	setScrollFactor('bokura_bg', 1, 1);

	addLuaSprite('bokura_bg', false);
	scaleObject('bokura_bg', 1.6, 1.6);

	close(true); 
end