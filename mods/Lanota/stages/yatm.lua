function onCreate()
	makeLuaSprite('yatm_bg', 'yatm_bg', -1300, -550);
	setScrollFactor('yatm_bg', 1, 1);

	addLuaSprite('yatm_bg', false);
	scaleObject('yatm_bg', 1.5, 1.5);

	close(true); 
end