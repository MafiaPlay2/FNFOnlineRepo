function onCreate()
	precacheSound('asteroids_pass')
	
	makeLuaSprite('rocc', 'zippyrocks', 2000, 160);
	
	--windows
	for i = 0, 4 do
		makeLuaSprite('win'..i, 'philly/win'..i, -10, 0);
		setLuaSpriteScrollFactor('win'..i, 0.3, 0.3);
		scaleObject('win'..i, 0.85, 0.85);
		setProperty('win'..i..'.visible', false)
		addLuaSprite('win'..i, false);
	end
	addLuaSprite('rocc', false);
end

roccMoving = false;
roccFrameTiming = 0;
startedMoving = false;

roccCars = 8;
roccFinishing = false;
roccCooldown = 0;

curLight = 0;
function onUpdate(elapsed)
	if roccMoving then
		roccFrameTiming = roccFrameTiming + elapsed;

		if roccFrameTiming >= 1 / 24 then
			updateroccPos();
			roccFrameTiming = 0;
		end
	end
	setProperty('win'..curLight..'.alpha', getProperty('win'..curLight..'.alpha') - (crochet / 1000) * elapsed * 1.5);
end

function onBeatHit()
	if not roccMoving then
		roccCooldown = roccCooldown + 1;
	end

	if curBeat ==56 then
		for i = 0, 4 do
			setProperty('win'..i..'.visible', false)
		end

		math.randomseed(os.time());
		curLight = math.random(0, 4);
		setProperty('win'..curLight..'.visible', true)
		setProperty('win'..curLight..'.alpha', 1)
	end
	

	if curBeat ==56 then
		roccStart();
	end
	
	if curBeat ==248 then
		roccStart();
	end
end

function roccStart()
	roccMoving = true;
	playSound('asteroids_pass', 1, 'roccSound');
end

function updateroccPos()
	if getSoundTime('roccSound') >= 4700 then
		startedMoving = true;
		characterPlayAnim('gf', 'hairBlow');
		setProperty('gf.specialAnim', true);
	end

	if (startedMoving) then
		roccX = getProperty('rocc.x') - 400;
		setProperty('rocc.x', roccX);

		if roccX < -2000 and not roccFinishing then
			setProperty('rocc.x', -1150);
			roccX = -1150;
			roccCars = roccCars - 1;

			if roccCars <= 0 then
				roccFinishing = true;
			end
		end

		if roccX < -4000 and roccFinishing then
			roccReset();
		end
	end
end

function roccReset()
	setProperty('gf.danced', false); --Sets head to the correct position once the animation ends
	characterPlayAnim('gf', 'hairFall');
	setProperty('gf.specialAnim', true);
	setProperty('rocc.x', screenWidth + 600);
	roccMoving = false;
	roccCars = 8;
	roccFinishing = false;
	startedMoving = false;
end