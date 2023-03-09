local defaultNotePos = {};
local arrowMoveX = 0;
local arrowMoveY = 50;
local move = false;

function onCreate()
    precacheImage('black-screen');
end

function onCreatePost()
    makeLuaSprite('black', 'black-screen', -500, -500);
    scaleObject('black', 2, 2);
    setScrollFactor('black', 0, 0);
    addLuaSprite('black', true);
    setProperty('black.alpha', 0);
end

function onUpdate(elapsed)
    songPos = getPropertyFromClass('Conductor', 'songPosition');
 
    currentBeat = (songPos / 1000) * (bpm / 60);

    if curStep >= 928 and curStep < 1056 then
        for i = 0,3 do
            setPropertyFromGroup('playerStrums', i, 'x', _G['defaultPlayerStrumX'..i] + 30 * math.sin((currentBeat/2) * math.pi));
            setPropertyFromGroup('opponentStrums', i, 'x', _G['defaultOpponentStrumX'..i] + 30 * math.sin((currentBeat/2) * math.pi));
        end
    end

    if curStep >= 1056 and curStep < 1184 and move then
        for i = 0,3 do
            setPropertyFromGroup('playerStrums', i, 'x', _G['defaultOpponentStrumX'..i] + 30 * math.sin((currentBeat/2) * math.pi));
            setPropertyFromGroup('opponentStrums', i, 'x', _G['defaultPlayerStrumX'..i] + 30 * math.sin((currentBeat/2) * math.pi));
        end
    end

    if curStep == 1056 then
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
    end
    if curStep == 1184 then
        for i = 0,3 do
            noteTweenX('move'..i, i, _G['defaultOpponentStrumX'..i], 0.4, 'linear');
            noteTweenAngle('rotate'..i, i, 0, 0.4, 'linear');
        end
        for i = 4,7 do
            noteTweenX('move'..i, i, _G['defaultPlayerStrumX'..(i-4)], 0.4, 'linear');
            noteTweenAngle('rotate'..i, i, 0, 0.4, 'linear');
        end
    end
end

function onStepHit()
    if curStep == 896 then
        setProperty('defaultCamZoom', 1.1);
        setProperty('black.alpha', 1);
        setProperty('camHUD.alpha', 0);
    end
    if curStep == 918 then
        doTweenAlpha('fadeBack', 'black', 0.6, 1, 'linear');
    end
    if curStep == 928 then
        doTweenAlpha('fadeBackToo', 'camHUD', 1, 0.25, 'linear');
    end
    if curStep == 1184 then
        setProperty('defaultCamZoom', 0.7);
        doTweenAlpha('fadeAway', 'black', 0, 0.25, 'linear');
    end
end

function onTweenCompleted(tag)
	if tag == 'move0' and curStep < 1150 then
        move = true;
    elseif tag == 'move0' and curStep >= 1150 then
        move = false;
    end
end