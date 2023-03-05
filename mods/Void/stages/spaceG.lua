function onCreate()
  --background
  makeAnimatedLuaSprite('bg','darkSpaceBG',-450,-260)
  setScrollFactor('bg', 0.1, 0.1);
  addAnimationByPrefix('bg','idle','Bg Bloop',6,true)
  objectPlayAnimation('bg','Bg Bloop',true)
  scaleObject('bg',1.7,1.7)
  
	makeAnimatedLuaSprite('bg5','bgBreak',-340,-300)
	setScrollFactor('bg5', 0.1, 0.1);
	addAnimationByPrefix('bg5', 'Init','Initial',12, false);
	addAnimationByIndices('bg5','Init','Initial', 0, 12);
	addAnimationByPrefix('bg5','break1', '1st Break', 12, false);
	addAnimationByPrefix('bg5','break2', '2nd Break', 12, false);
	scaleObject('bg5',1.3,1.3)
	
  
  makeLuaSprite('bgB', 'blacc', -800, -300)
  doTweenAlpha('invis', 'bgB', 0, 1 , 'linear')
  setProperty('bgB.active', false)
  
  
  
 
  
  
  
  
  makeAnimatedLuaSprite('fg','spacestage',-300,-400)
  scaleObject('fg',1.2,1.2)
  addAnimationByPrefix('fg','idle','Stage Bop',24,false)

  
  makeAnimatedLuaSprite('bg2','holoEmpty',-340,-300)
  scaleObject('bg2',1.15,1.1)
  addAnimationByPrefix('bg2','idle','Holo Boppers',24,false)
  setScrollFactor('bg2', 0.2, 0.2)
  setProperty('bg2.visible', true)
  
  makeAnimatedLuaSprite('bg6','holoEmptyAlt',-340,-300)
  scaleObject('bg6',1.15,1.1)
  addAnimationByPrefix('bg6','idle','Holo Boppers',24,false)
  setScrollFactor('bg6', 0.2, 0.2)
  setProperty('bg6.visible', false)
  
  
  
  makeLuaSprite('fg2','spacerocksFG',-1320,-190)
  scaleObject('fg2',1.3,1.2)
  setScrollFactor('fg2', 1.6, 1.6);
  
  
  makeLuaSprite('bg3','darkSpacerocks',-260,-80)
  setScrollFactor('bg3', 0.4, 0.4);
  
   makeLuaSprite('ov','sso',-300,-245)
  scaleObject('ov',1.2,1)
  setProperty('ov.alpha', 0.7)
  setBlendMode('ov', 'add')
 
  
 
  
 
  

 
  addLuaSprite('bg',false)
  addLuaSprite('bg6',false)
  addLuaSprite('bg2',false)
  addLuaSprite('bg5',false)
  addLuaSprite('bg3',false)
  addLuaSprite('fg',false)
  addLuaSprite('fg2',true)
  addLuaSprite('ov',true)
  addLuaSprite('bgB',true)
  
  
  close(true);
  end
  

 