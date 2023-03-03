function onCreate()

	makeLuaSprite('re', 'what',-350,-50)
	addLuaSprite('re',false)
	setLuaSpriteScrollFactor('re', 1, 1)
        setProperty('re.visible', true);

	makeLuaSprite('fire', 'nightmare',-350,-50)
	addLuaSprite('fire',false)
	setLuaSpriteScrollFactor('fire', 1, 1)
        setProperty('fire.visible', false);

	makeLuaSprite('ov', 'rematchoverlay',-350,-50)
	addLuaSprite('ov',true)
	setLuaSpriteScrollFactor('ov', 1, 1)
        setProperty('ov.visible', false);
        setBlendMode('ov', 'screen')



end

function onEvent(name,value1,value2)
    if name == 'Play Animation' then 

        if value1 == 'fire' then
            setProperty('ov.visible', false);
            setProperty('fire.visible', true);
            setProperty('re.visible', false);


        end
        if value1 == 'fire2' then
            setProperty('ov.visible', true);
            setProperty('fire.visible', true);
            setProperty('re.visible', false);


        end


    end
end

