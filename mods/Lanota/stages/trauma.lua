function onCreate()
	makeLuaSprite('trauma_bg_back', 'trauma_bg_back', -700, -200);
	setScrollFactor('trauma_bg_back', 1, 1);

	makeLuaSprite('trauma_bg_notalium', 'trauma_bg_notalium', -700, -200);
	setScrollFactor('trauma_bg_notalium', 1, 1);

	addLuaSprite('trauma_bg_back', false);
	addLuaSprite('trauma_bg_notalium', false);
	
	close(true); 
end