function onCreate()

    setPropertyFromClass('ClientPrefs', 'globalAntialiasing', false);

	makeLuaSprite('bg','bg',-980,50)
	setProperty('bg.antialiasing', false);
	scaleObject('bg', 3, 3)
	addLuaSprite('bg')

	makeLuaSprite('bartop','',-200,-30)
	makeGraphic('bartop',2000,200,'000000')
	addLuaSprite('bartop',false)
    setScrollFactor('bartop',0,0)
    setObjectCamera('bartop','hud')

    makeLuaSprite('barbot','',-200,550)
	makeGraphic('barbot',2000,200,'000000')
	addLuaSprite('barbot',false)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')



end


function onBeatHit()
    if curBeat == 160 then
    		makeLuaSprite('BLACKcover','',0,0)
			makeGraphic('BLACKcover',2000,2000,'000000')
			addLuaSprite('BLACKcover',false)
    		setScrollFactor('BLACKcover',0,0)
    		setObjectCamera('BLACKcover','hud')
    end
end

