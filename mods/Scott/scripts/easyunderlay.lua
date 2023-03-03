--Script by Jaldabo from Psych Engine Discord
function onCreate()
    if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
        makeLuaSprite('underlay-player', 'underlayplayer', 700, 0)
        makeGraphic('underlay-player', 500, 720, '000000')
        setObjectCamera('underlay-player', 'hud')
        addLuaSprite('underlay-player', false)

        makeLuaSprite('underlay-opponent', 'underlayopponent', 65, 0)
        makeGraphic('underlay-opponent', 500, 720, '000000')
        setObjectCamera('underlay-opponent', 'hud')
        addLuaSprite('underlay-opponent', false)
    end
    if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
        makeLuaSprite('underlay-middle', 'underlaymiddlescroll', 380, 0)
        makeGraphic('underlay-middle', 500, 720, '000000')
        setObjectCamera('underlay-middle', 'hud')
        addLuaSprite('underlay-middle', false)
    end
end

function onUpdate()
    setProperty('underlay-middle.alpha', opacity)
    setProperty('underlay-player.alpha', opacity)
    setProperty('underlay-opponent.alpha', opacity)
    if keyboardJustPressed('ONE') then
        opacity = 0.0
    elseif keyboardJustPressed('TWO') then
        opacity = 0.5
    elseif keyboardJustPressed('THREE') then
        opacity = 1.0
    end
end