function onCreate()
	makeLuaSprite('sky', 'street/sky', -600, -450);
	setScrollFactor('sky', 0.4, 0.4);
	scaleObject('sky', 0.7, 0.7);

	if not lowQuality then
		makeLuaSprite('wellwellwell', 'street/neighbours', -600, -450);
		setScrollFactor('wellwellwell', 0.95, 0.95);
		scaleObject('wellwellwell', 0.7, 0.7);
	end

	makeLuaSprite('home', 'street/house', -600, -450);
	setScrollFactor('home', 0.95, 0.95);
	scaleObject('home', 0.7, 0.7);

	makeLuaSprite('road', 'street/road', -600, -450);
	setScrollFactor('road', 1, 1);
	scaleObject('road', 0.7, 0.7);

	makeLuaSprite('streetlights', 'street/streetlights', -600, -450);
	setScrollFactor('streetlights', 1, 1);
	scaleObject('streetlights', 0.7, 0.7);

	if not lowQuality then
		makeLuaSprite('bop1', 'street/bg-bop1', 0, -50);
		setScrollFactor('bop1', 1, 1);
		scaleObject('bop1', 0.5, 0.5);

		makeLuaSprite('bop2', 'street/bg-bop2', -350, -50);
		setScrollFactor('bop2', 1, 1);
		scaleObject('bop2', 0.5, 0.5);

		makeLuaSprite('bop3', 'street/bg-bop3', -400, -50);
		setScrollFactor('bop3', 1, 1);
		scaleObject('bop3', 0.5, 0.5);
	end

	makeLuaSprite('lighting', 'street/lighting', -600, -450);
	setScrollFactor('lighting', 1, 1);
	scaleObject('lighting', 0.7, 0.7);

	if not lowQuality then
		makeLuaSprite('fg1', 'street/fg-bop1', -650, 500);
		setScrollFactor('fg1', 1.1, 1.1);
		scaleObject('fg1', 0.35, 0.35);

		makeLuaSprite('fg2', 'street/fg-bop2', 1650, 500);
		setScrollFactor('fg2', 1.1, 1.1);
		scaleObject('fg2', 0.35, 0.35);
	end

	addLuaSprite('sky', false);
	addLuaSprite('wellwellwell', false);
	addLuaSprite('home', false);
	addLuaSprite('road', false);
	addLuaSprite('streetlights', false);
	addLuaSprite('bop1', false);
	addLuaSprite('bop2', false);
	addLuaSprite('bop3', false);
	addLuaSprite('lighting', true);
	addLuaSprite('fg1', true);
	addLuaSprite('fg2', true);
	
	--close(true);
end

function onBeatHit()
	if not lowQuality then
		setProperty('fg1.y', 515);
		doTweenY('bopFG1', 'fg1', 500, 0.25, 'sineInOut');
		setProperty('fg2.y', 515);
		doTweenY('bopFG2', 'fg2', 500, 0.25, 'sineInOut');

		setProperty('bop1.scale.y', 0.4875);
		setProperty('bop1.scale.x', 0.5125);
		setProperty('bop1.y', -40);
		setProperty('bop1.x', -15);
		doTweenY('bopBG1ScaleY', 'bop1.scale', 0.5, 0.25, 'sineInOut');
		doTweenX('bopBG1ScaleX', 'bop1.scale', 0.5, 0.25, 'sineInOut');
		doTweenY('bopBG1Y', 'bop1', -50, 0.25, 'sineInOut');
		doTweenX('bopBG1X', 'bop1', 0, 0.25, 'sineInOut');

		setProperty('bop2.scale.y', 0.4875);
		setProperty('bop2.scale.x', 0.5125);
		setProperty('bop2.y', -40);
		setProperty('bop2.x', -340);
		doTweenY('bopBG2ScaleY', 'bop2.scale', 0.5, 0.25, 'sineInOut');
		doTweenX('bopBG2ScaleX', 'bop2.scale', 0.5, 0.25, 'sineInOut');
		doTweenY('bopBG2Y', 'bop2', -50, 0.25, 'sineInOut');
		doTweenX('bopBG2X', 'bop2', -350, 0.25, 'sineInOut');

		setProperty('bop3.scale.y', 0.4875);
		setProperty('bop3.scale.x', 0.5125);
		setProperty('bop3.y', -40);
		setProperty('bop3.x', -385);
		doTweenY('bopBG3ScaleY', 'bop3.scale', 0.5, 0.25, 'sineInOut');
		doTweenX('bopBG3ScaleX', 'bop3.scale', 0.5, 0.25, 'sineInOut');
		doTweenY('bopBG3Y', 'bop3', -50, 0.25, 'sineInOut');
		doTweenX('bopBG3X', 'bop3', -400, 0.25, 'sineInOut');
	end
end

function onStepHit()
	if songName == 'Treat' then
		if curStep == 896 then
			if not lowQuality then
				setProperty('fg1.alpha', 0.5);
				setProperty('fg2.alpha', 0.5);
			end
			setProperty('lighting.alpha', 0);
		end
		if curStep == 1184 then
			if not lowQuality then
				doTweenAlpha('yoWeBack1', 'fg1', 1, 0.25, 'linear');
				doTweenAlpha('yoWeBack2', 'fg2', 1, 0.25, 'linear');
			end
			doTweenAlpha('turnThatShitOn', 'lighting', 1, 0.25, 'linear');
		end
	end
end