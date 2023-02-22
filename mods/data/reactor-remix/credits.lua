-------------------------------
-- Made by: Piggyfriend1792  --
-- Hi Rareblin :]            --
-------------------------------

local offsetX = 10
local offsetY = 500
local objWidth = 385
local title = "Reactor (ft. ETD)"
local creator = "by Rareblin"
local contributors = "from Vs Impostor"

function onCreatePost()

    -- Example on how this works
    if songName == "raining-tacos" then
        title = "Epic Song Name" -- Song Name goes here
        creator = "Piggyfriend1792" -- Creator of song goes here
        contributors = "You, me, gas station." -- Contributors go here

    -- If you wanna add another song, copy and paste this section --
    elseif songName == "him" then
        title = "Him" -- Song Name goes here
        creator = "Rareblin" -- Creator of song goes here
        contributors = "Loggo, Spaggy, etcetc i eat babies" -- Contributors go here

    ----------------------------------------------------------------

    end

    makeLuaSprite('creditBox', 'empty', 0 - objWidth, offsetY)
    makeGraphic('creditBox', objWidth, 150, '000000')
    setObjectCamera('creditBox', 'other')
    setProperty("creditBox.alpha", 0.7)
    addLuaSprite('creditBox', true)

    makeLuaText('creditTitle', title, objWidth, offsetX - objWidth, offsetY+10)
    setTextSize('creditTitle', 45)
    setTextAlignment('creditTitle', 'left')
    setObjectCamera('creditTitle', 'other')
    addLuaText("creditTitle",true)

    makeLuaText('creditCreator', creator, objWidth, offsetX - objWidth, offsetY+60)
    setTextSize('creditCreator', 30)
    setTextAlignment('creditCreator', 'left')
    setObjectCamera('creditCreator', 'other')
    addLuaText("creditCreator",true)

    makeLuaText('creditContributor', ''..contributors, objWidth, offsetX - objWidth, offsetY+95)
    setTextSize('creditContributor', 20)
    setTextAlignment('creditContributor', 'left')
    setObjectCamera('creditContributor', 'other')
    addLuaText("creditContributor",true)

end

function onSongStart()

    doTweenX("creditBoxTween", "creditBox", getProperty("creditBox.x") + objWidth, 1, "expoOut")
    doTweenX("creditTitleTween", "creditTitle", getProperty("creditTitle.x") + objWidth, 1, "expoOut")
    doTweenX("creditCreatorTween", "creditCreator", getProperty("creditCreator.x") + objWidth, 1, "expoOut")
    doTweenX("creditContributorTween", "creditContributor", getProperty("creditContributor.x") + objWidth, 1, "expoOut")
    runTimer("creditDisplay",5,1)

end

function onTimerCompleted(timerName)

    if timerName == "creditDisplay" then
        doTweenX("creditBoxTween", "creditBox", getProperty("creditBox.x") - objWidth, 0.5, "sineIn")
        doTweenX("creditTitleTween", "creditTitle", getProperty("creditTitle.x") - objWidth, 0.5, "sineIn")
        doTweenX("creditCreatorTween", "creditCreator", getProperty("creditCreator.x") - objWidth, 0.5, "sineIn")
        doTweenX("creditContributorTween", "creditContributor", getProperty("creditContributor.x") - objWidth, 0.5, "sineIn")

    end

end
