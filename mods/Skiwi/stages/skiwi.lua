function onCreate()
	-- background shit
	makeLuaSprite('ground', 'ground', -900, -400);
	scaleObject('ground', 1.3, 1);

	makeLuaSprite('bars', 'bars', -1050, -400);
	setScrollFactor('bars', 0.9, 0.9);
	scaleObject('bars', 1.3, 1);
	
	makeLuaSprite('light', 'light', -510, -500);

	makeLuaSprite('moon', 'moon', -700, -500);
	setScrollFactor('moon', 0.7, 0.7);

	makeLuaSprite('overlay', 'overlay', -1200, -700);
	scaleObject('overlay', 2,2);

	makeLuaSprite('pole', 'pole', -490, -400);
	setScrollFactor('pole', 0.95, 0.95);

	makeLuaSprite('polehighlight', 'polehighlight', -500, -400);
	setScrollFactor('polehighlight', 0.95, 0.95);

	makeLuaSprite('shadowoverlay', 'shadowoverlay', -400, -200);
	scaleObject('shadowoverlay', 1.3,1.3);

	makeLuaSprite('bench', 'bench', -300, -50);
	setScrollFactor('bench', 0.95, 0.95);

	makeLuaSprite('sky', 'sky', -800, -500);
	setScrollFactor('sky', 0.6, 0.6);

	makeAnimatedLuaSprite('plops', 'rainplops',-400,650);
	addAnimationByPrefix('plops', 'plops', 'rainplops', 24, true);
	objectPlayAnimation('plops', 'plops', false);	
	scaleObject('plops', 1, 1.5);
	setProperty('plops.visible', false);


	makeAnimatedLuaSprite('rain', 'rainfall',-550,-200);
	addAnimationByPrefix('rain', 'rain', 'rainfallloop', 24, true);
	objectPlayAnimation('rain', 'rain', false);	
	setProperty('rain.visible', false);
	
	makeAnimatedLuaSprite('mist', 'mist',-750,300);
	addAnimationByPrefix('mist', 'mist', 'mist', 24, true);
	objectPlayAnimation('mist', 'mist', false);	
	setScrollFactor('mist', 0.9, 0.9);
	scaleObject('mist', 1.2, 1.2);
	setProperty('mist.visible', false);

	makeAnimatedLuaSprite('transition', 'transition',-500,-390);
	addAnimationByPrefix('transition', 'transition', 'transitionsquare', 12, false);

	--this is the bottom
	addLuaSprite('sky', false);
	addLuaSprite('moon', false);
	addLuaSprite('bars', false);
	addLuaSprite('ground', false);
	addLuaSprite('pole', false);
	addLuaSprite('polehighlight', false);
	addLuaSprite('bench', false);
	addLuaSprite('plops', false);
	addLuaSprite('rain', true);
	addLuaSprite('mist', true);
	addLuaSprite('shadowoverlay', true);
	addLuaSprite('light', true);
	addLuaSprite('overlay', true);
	addLuaSprite('transition', true);
	--this is the stuff that you'll see at the top

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end