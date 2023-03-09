function onEvent(name, value1, value2)
	if name == 'Icon Change' then
        if value1 == 'treat' then
            runHaxeCode[[game.iconP2.changeIcon('treat')]];
            setHealthBarColors('ff7cd9', '31b1d1');
        elseif value1 == 'trick' then
            runHaxeCode[[game.iconP2.changeIcon('trick')]];
            setHealthBarColors('e87b48', '31b1d1');
        elseif value1 == 'halloween' then
            runHaxeCode[[game.iconP2.changeIcon('halloween')]];
            setHealthBarColors('66f462', '31b1d1');
        end
    end
end