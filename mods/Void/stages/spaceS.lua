function onCreate()
  --background
  makeLuaSprite('bg','oblivionDark1',-650,-260)
  setScrollFactor('bg', 0.1, 0.1);
  scaleObject('bg',1.25,1.1)
  
 
  makeLuaSprite('bg5','oblivionDark2',-650,-260)
  setScrollFactor('bg5',0.22,0.22)
  scaleObject('bg5',1.4,1.4)
  
  makeLuaSprite('bg6','oblivionDark3',-650,-260)
  setScrollFactor('bg6', 0.35,0.35)
  scaleObject('bg6', 1.6,1.6)
  
  makeAnimatedLuaSprite('bg7','neoBop',-460,-240)
  setScrollFactor('bg7',0.5,0.5)
  addAnimationByPrefix('bg7','idle','Neo Boppin',24 ,false)
  scaleObject('bg7', 1.2,1.2)
  
  makeLuaSprite('bg9','tintedSpaceBG',-650,-260)
  setScrollFactor('bg9', 0.1,0.1)
  scaleObject('bg9',1.7,1.8)
  
  makeAnimatedLuaSprite('bg8','oblivionBG',-710,-300)
  setScrollFactor('bg8',0.2,0.2)
  scaleObject('bg8',1.6,1.8)
  addAnimationByPrefix('bg8','idle','BG Bop', 24, false)

  
  makeAnimatedLuaSprite('bg10', 'bgGlitch',-820, -680)
  setScrollFactor('bg10', 0.3, 0.3)
  scaleObject('bg10', 1.1, 1.1)
  addAnimationByPrefix('bg10', 'idle', 'Glitch FX', 10, true)
  objectPlayAnimation('bg10', 'Glitch FX',true)
  doTweenAlpha('where', 'bg10', 0, 0000000.1, 'linear')
  
  makeLuaSprite('fg3', 'camTint', -850, -410)
  scaleObject('fg3', 1.75,1.75)
  doTweenAlpha('faded', 'fg3', 1, 0.00000001, 'linear')
  
  
  

  
 
  
  
  
  
  makeAnimatedLuaSprite('fg','spacestage',-300,-400)
  scaleObject('fg',1.2,1.2)
  addAnimationByPrefix('fg','idle','Stage Bop',24, false)
  
  
  makeLuaSprite('bg2','holoBroken',-570,-100)
  scaleObject('bg2',1.4,1.1)
  setScrollFactor('bg2', 0.45, 0.45)
  
  makeLuaSprite('fg2','spacerocksFG',-1320,-190)
  scaleObject('fg2',1.3,1.2)
  setScrollFactor('fg2', 1.6, 1.6);
  
  
  makeLuaSprite('bg3','darkSpacerocks',-260,-80)
  setScrollFactor('bg3', 0.4, 0.4);
  
  makeLuaSprite('bg4','empty',-450,-160)
  setScrollFactor('bg4', 0.1, 0.1);
  scaleObject('bg4',1.7,1.7)
  
   makeLuaSprite('ov','sso',-300,-245)
  scaleObject('ov',1.2,1)
  setProperty('ov.alpha', 0.7)
  setBlendMode('ov', 'add')
 
  

  
 
  addLuaSprite('bg9',false)
  addLuaSprite('bg8',false)
  addLuaSprite('bg',false)
  addLuaSprite('bg5',false)
  addLuaSprite('bg6',false)
  addLuaSprite('bg2',false)
  addLuaSprite('bg10',false)
  addLuaSprite('bg4',false)
  addLuaSprite('bg7',false)
  addLuaSprite('bg5',false)
  addLuaSprite('bg3',false)
  addLuaSprite('fg',false)
  addLuaSprite('ov',true)
  addLuaSprite('fg2',true)
  addLuaSprite('fg3',true)
  
  close(true);
  end
  
  function onBeatHit()
  
	if curBeat == 136 then
		setProperty('bg10.visible', true)
	end
	
	if curBeat == 584 then
		setProperty('bg10.visible', false)
	end
	
	if curBeat == 712 then
		doTweenAlpha('adios','fg3',0, 2.2, 'quadIn')
	end
 end
 
  