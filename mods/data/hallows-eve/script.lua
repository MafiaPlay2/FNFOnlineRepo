local bf2X = 0;
local bf2Y = 0;

local bf2XOffset = 0;
local bf2YOffset = 0;

local animateBf2 = true;

local arrowMoveX = 0;
local arrowMoveY = 50;
local move = false;

function onCreate()
    makeAnimatedLuaSprite('bf2', 'characters/trick', getProperty('dad.x') - 175, getProperty('dad.y') - 250);
    addAnimationByPrefix('bf2', 'idle', 'idle', 24, false);
    addAnimationByPrefix('bf2', '0', 'left', 24, false);
    addAnimationByPrefix('bf2', '1', 'down', 24, false);
    addAnimationByPrefix('bf2', '2', 'up', 24, false);
    addAnimationByPrefix('bf2', '3', 'right', 24, false);
    objectPlayAnimation('bf2', 'idle');
    addLuaSprite('bf2', true);

    precacheImage('black-screen');
end

function onCreatePost()
    bf2X = getProperty('bf2.x');
    bf2Y = getProperty('bf2.y');
    setObjectOrder('bf2', getObjectOrder('lighting') - 1);
    runHaxeCode[[game.iconP2.changeIcon('halloween')]];
    setHealthBarColors('66f462', '31b1d1');

    makeLuaSprite('black', 'black-screen', -500, -500);
    scaleObject('black', 2, 2);
    setScrollFactor('black', 0, 0);
    addLuaSprite('black', true);
    setProperty('black.alpha', 0);
end

function onUpdate(elapsed)
    setProperty('bf2.x', bf2X - bf2XOffset);
    setProperty('bf2.y', bf2Y - bf2YOffset);

    songPos = getPropertyFromClass('Conductor', 'songPosition');
 
    currentBeat = (songPos / 1000) * (bpm / 60);

    if ((curStep >= 416 and curStep < 544) or (curStep >= 672 and curStep < 800) or (curStep >= 1312 and curStep < 1472) or (curStep >= 1568 and curStep < 1600)) and (not move) then
        for i = 0,3 do
            setPropertyFromGroup('playerStrums', i, 'x', _G['defaultPlayerStrumX'..i] + 30 * math.sin((currentBeat/2) * math.pi));
            setPropertyFromGroup('opponentStrums', i, 'x', _G['defaultOpponentStrumX'..i] + 30 * math.sin((currentBeat/2) * math.pi));
        end
    end

    if ((curStep >= 544 and curStep < 672) or (curStep >= 1472 and curStep < 1568) or (curStep >= 1600 and curStep < 1696)) and move then
        for i = 0,3 do
            setPropertyFromGroup('playerStrums', i, 'x', _G['defaultOpponentStrumX'..i] + 30 * math.sin((currentBeat/2) * math.pi));
            setPropertyFromGroup('opponentStrums', i, 'x', _G['defaultPlayerStrumX'..i] + 30 * math.sin((currentBeat/2) * math.pi));
        end
    end

    if curStep == 544 or curStep == 1472 or curStep == 1600 then
        for i = 0,3 do
            setPropertyFromGroup('playerStrums', i, 'x', _G['defaultPlayerStrumX'..i]);
            setPropertyFromGroup('opponentStrums', i, 'x', _G['defaultOpponentStrumX'..i]);
        end
        for i = 0,3 do
            noteTweenX('move'..i, i, _G['defaultPlayerStrumX'..i], 0.5, 'linear');
            noteTweenAngle('rotate'..i, i, 360, 0.5, 'linear');
        end
        for i = 4,7 do
            noteTweenX('move'..i, i, _G['defaultOpponentStrumX'..(i-4)], 0.5, 'linear');
            noteTweenAngle('rotate'..i, i, -360, 0.5, 'linear');
        end
        runTimer('switch', 0.5);
    end
    if curStep == 672 or curStep == 1568 or curStep == 1696 then
        for i = 0,3 do
            setPropertyFromGroup('playerStrums', i, 'x', _G['defaultOpponentStrumX'..i]);
            setPropertyFromGroup('opponentStrums', i, 'x', _G['defaultPlayerStrumX'..i]);
        end
        for i = 0,3 do
            noteTweenX('move'..i, i, _G['defaultOpponentStrumX'..i], 0.5, 'linear');
            noteTweenAngle('rotate'..i, i, 0, 0.5, 'linear');
        end
        for i = 4,7 do
            noteTweenX('move'..i, i, _G['defaultPlayerStrumX'..(i-4)], 0.5, 'linear');
            noteTweenAngle('rotate'..i, i, 0, 0.5, 'linear');
        end
        runTimer('switch', 0.5);
    end
end

function onStepHit()
    if curStep == 416 or curStep == 1056 then
        doTweenAlpha('fadeBlack', 'black', 0.6, 0.25, 'linear');
        setProperty('defaultCamZoom', 0.85);
        if not lowQuality then
            doTweenAlpha('yoWeGone1', 'fg1', 0.75, 0.25, 'linear');
            doTweenAlpha('yoWeGone2', 'fg2', 0.75, 0.25, 'linear');
        end
        doTweenAlpha('turnThatShitOff', 'lighting', 0, 0.25, 'linear');
    end
    if curStep == 544 or curStep == 1432 then
        setProperty('defaultCamZoom', 0.7);
        doTweenAlpha('fadeAway', 'black', 0, 0.25, 'linear');
        if not lowQuality then
            doTweenAlpha('yoWeBack1', 'fg1', 1, 0.25, 'linear');
            doTweenAlpha('yoWeBack2', 'fg2', 1, 0.25, 'linear');
        end
        doTweenAlpha('turnThatShitOn', 'lighting', 1, 0.25, 'linear');
    end
end

function onBeatHit()
    if curBeat % 2 == 0 then
        if animateBf2 then
            objectPlayAnimation('bf2', 'idle');
            bf2XOffset = 0;
            bf2YOffset = 0;
        end
    end
end

lastNoteBf = {0, ""}

function opponentNoteHit(id, direction, noteType, isSustainNote)
	lastNoteBf[1] = direction;
    lastNoteBf[2] = noteType;

    if lastNoteBf[2] == 'Trick Only' or lastNoteBf[2] == 'Together' then
        animateBf2 = false;
        objectPlayAnimation('bf2', lastNoteBf[1], true);
        checkOffsets('bf2', lastNoteBf[1]);
        cancelTimer('animationEndBf2');
        runTimer('animationEndBf2', 0.3);
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'animationEndBf2' then
        objectPlayAnimation('bf2', 'idle');
        animateBf2 = true;
        bf2XOffset = 0;
        bf2YOffset = 0;
        setProperty('bf2.x', bf2X - bf2XOffset);
        setProperty('bf2.y', bf2Y - bf2YOffset);
    end
    if tag == 'switch' then
        move = not move;
    end
end

function checkOffsets(char, data)
    if char == 'bf2' then
        if data == 0 then
            bf2XOffset = 81;
            bf2YOffset = 30;
        elseif data == 1 then
            bf2XOffset = 140;
            bf2YOffset = -90;
        elseif data == 2 then
            bf2XOffset = 234;
            bf2YOffset = 56;
        elseif data == 3 then
            bf2XOffset = 114;
            bf2YOffset = -9;
        else
            bf2XOffset = 0;
            bf2YOffset = 0;
        end
        setProperty('bf2.x', bf2X - bf2XOffset);
        setProperty('bf2.y', bf2Y - bf2YOffset);
    end
end