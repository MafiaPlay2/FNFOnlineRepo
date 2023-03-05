function onCreate()
  --background
  makeLuaSprite('bg','spaceBG',-450,-250)
  setScrollFactor('bg', 0.1, 0.1);
  scaleObject('bg',1.7,1.7)
  
  makeLuaSprite('bg4','spaceBGflash',-450,-160)
  setScrollFactor('bg4', 0.1, 0.1);
  scaleObject('bg4',1.4,1.5)
  addLuaSprite('bg4', false);
  
  makeAnimatedLuaSprite('fg','spacestageAlt',-300,-400)
  scaleObject('fg',1.2,1.2)
  addAnimationByPrefix('fg','idle','Stage Bop',24, false)
  
  
  makeAnimatedLuaSprite('bg2','holoEmpty-V',-340,-300)
  scaleObject('bg2',1.15,1.1)
  addAnimationByPrefix('bg2','idle','Holo Boppers',24,false)
  setScrollFactor('bg2', 0.2, 0.2)
  
  makeAnimatedLuaSprite('bg4','holoEmpty-V2',-340,-300)
  scaleObject('bg4',1.15,1.1)
  addAnimationByPrefix('bg4','idle','Holo Boppers',24,false)
  setScrollFactor('bg4', 0.2, 0.2)
  
  makeLuaSprite('fg2','spacerocksFG',-1120,-190)
  scaleObject('fg2',1.3,1.2)
  setScrollFactor('fg2', 1.6, 1.6);
  
  
  makeLuaSprite('bg3','spacerocks',-260,-80)
  setScrollFactor('bg3', 0.4, 0.4);
 
  
  

  addLuaSprite('bg',false)
  addLuaSprite('bg2',false)
  addLuaSprite('bg4',false)
  addLuaSprite('bg3',false)
  addLuaSprite('fg',false)
  addLuaSprite('fg2',true)
  
  close(true);
  end
  
  
 