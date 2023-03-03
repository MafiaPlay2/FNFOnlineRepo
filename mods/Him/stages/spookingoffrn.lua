function onCreatePost()--this thing happens once the characters are spawned

	setProperty("gf.alpha", 0)


end

function onSongStart()

end





variable2 = false



function onCreate()

	
	
	makeLuaSprite('ground', 'stages/spooky shit/ground', -300, -200);
	setLuaSpriteScrollFactor('ground', 1, 1);
	scaleObject('ground', 1, 1);
	addLuaSprite('ground', false);

	
	makeLuaSprite('bg', 'stages/spooky shit/background', -300, -200);
	setLuaSpriteScrollFactor('bg', 1, 1);
	scaleObject('bg', 1, 1);
	addLuaSprite('bg', false);
	


	
		makeLuaSprite('mg', 'stages/spooky shit/midground', -300, -200);
	setLuaSpriteScrollFactor('mg', 1, 1);
	scaleObject('mg', 1, 1);
	addLuaSprite('mg', false);
	
	makeLuaSprite('c', 'stages/spooky shit/carpet', -300, -200);
	setLuaSpriteScrollFactor('c', 1, 1);
	scaleObject('c', 1, 1);
	addLuaSprite('c', false);
	
	makeLuaSprite('fg', 'stages/spooky shit/foreground', -250, -300);
	setLuaSpriteScrollFactor('fg', 1.2, 1.2);
	scaleObject('fg', 1, 1);
	addLuaSprite('fg', true);
	
	makeLuaSprite('backlight', 'stages/spooky shit/backLight', -300, -250);
	makeAnimatedLuaSprite('backlight', 'stages/spooky shit/backLight', -300, -200);
	setScrollFactor('backlight', 1, 1);
	setObjectOrder("backlight", 2)
	addAnimationByPrefix('backlight', 'bop', 'idle', 24, true)
	addLuaSprite('backlight', false)
		
	makeLuaSprite('backTorch', 'stages/spooky shit/backTorch', -300, -250);
	makeAnimatedLuaSprite('backTorch', 'stages/spooky shit/backTorch', -300, -200);
	setScrollFactor('backTorch', 1, 1);
	setObjectOrder("backTorch", 2)
	addAnimationByPrefix('backTorch', 'bop2', 'idle', 24, true)
	addLuaSprite('backTorch', false)
	
	
	setProperty("gf.alpha", 0)

		makeLuaSprite('reference', 'stages/spooky shit/reference', -300, -200);
	setLuaSpriteScrollFactor('reference', 1, 1);
	scaleObject('reference', 3, 3);
	addLuaSprite('reference', false);
	setProperty("reference.alpha", 0)
	playAnim('backlight', 'bop', false, false,  0)
	playAnim('backTorch', 'bop2', false, false,  0)
	

	
end

