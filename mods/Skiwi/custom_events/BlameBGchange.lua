function onEvent(name, value1, value2)
	if name == 'BlameBGchange' then
		if value1 == 'bg1' then
			setProperty('wallDark.visible', true);
			setProperty('floorDark.visible', true);
			setProperty('columnDark.visible', true);
			setProperty('coneheadDark.visible', true);
			setProperty('wall.visible', false);
			setProperty('floor.visible', false);
			setProperty('column.visible', false);
			setProperty('conehead.visible', false);
		end
		if value1 == 'transition' then
			objectPlayAnimation('transition', 'transition', false);	
		end
		if value1 == 'transitionend' then
			setProperty('transition.visible', false);
		end
		if value1 == 'rain' then

			objectPlayAnimation('plops', 'plops', false);	
			
			setProperty('plops.visible', true);
			objectPlayAnimation('rain', 'rain', false);	
			setProperty('rain.visible', true);
			objectPlayAnimation('mist', 'mist', false);	
			
			setProperty('mist.visible', true);
			objectPlayAnimation('transition', 'transition', false);	
		end
		if value1 == 'rainstop' then
			objectPlayAnimation('transition', 'transition', false);	
			setProperty('plops.visible', false);
			setProperty('rain.visible', false);
			setProperty('mist.visible', false);
		end
		if value1 == 'bgnormal' then
			setProperty('wallDark.visible', false);
			setProperty('floorDark.visible', false);
			setProperty('columnDark.visible', false);
			setProperty('coneheadDark.visible', false);
			setProperty('wall.visible', true);
			setProperty('floor.visible', true);
			setProperty('column.visible', true);
			setProperty('conehead.visible', true);
		end		
		if value1 == 'leftflash' then
			objectPlayAnimation('lightsflash', 'flash', false);
		end
		if value1 == 'rightflash' then
			objectPlayAnimation('lightsflash1', 'flash', false);
		end
		if value1 == 'bothflash' then
			objectPlayAnimation('lightsflash1', 'flash', false);
			objectPlayAnimation('lightsflash', 'flash', false);
		end

		if value1 == 'smoke' then
			setProperty('mist.visible', true);
		end
	end
end
