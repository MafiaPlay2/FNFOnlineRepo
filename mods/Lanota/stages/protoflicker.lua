function onCreate()
	makeLuaSprite('protoflicker_bg', 'protoflicker_bg', -700, -90);
	setScrollFactor('protoflicker_bg', 1, 1);

	addLuaSprite('protoflicker_bg', false);
	scaleObject('protoflicker_bg', 1.2, 1.2);

	close(true); 
end