function onCreate()
	makeLuaSprite('couchback', 'couch/couchback', -255, -66);
	scaleObject('couchback', 0.8, 0.8);
	setScrollFactor('couchback', 0.1, 0.1);
	setProperty('couchback.antialiasing', true);
	setObjectOrder('couchback', 0);

	makeLuaSprite('couchfront', 'couch/couchfront', -265, 176);
	scaleObject('couchfront', 0.7, 0.7);
	setScrollFactor('couchfront', 1, 1);
	setProperty('couchfront.antialiasing', true);
	setObjectOrder('couchfront', 1);

	setScrollFactor('gfGroup', 1, 1);
	setProperty('gfGroup.antialiasing', true);
	setObjectOrder('gfGroup', 2);

	setScrollFactor('dadGroup', 1, 1);
	setProperty('dadGroup.antialiasing', true);
	setObjectOrder('dadGroup', 3);

	setScrollFactor('boyfriendGroup', 1, 1);
	setProperty('boyfriendGroup.antialiasing', true);
	setObjectOrder('boyfriendGroup', 4);

	close(true);
end