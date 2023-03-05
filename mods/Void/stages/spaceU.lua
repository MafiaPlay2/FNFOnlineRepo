function onCreate()
  --background
  makeLuaSprite('bg','spaceBG',-450,-260)
  setScrollFactor('bg', 0.1, 0.1);
  scaleObject('bg',1.7,1.7)
  
  makeLuaSprite('bg4','spaceBGflash',-450,-260)
  setScrollFactor('bg4', 0.1, 0.1);
  scaleObject('bg4',1.7,1.7)
  doTweenAlpha('flash', 'bg4', 0, 0.000000001, 'linear')
  
  makeLuaSprite('fg3', 'coolFlash', -1, 0)
  scaleObject('fg3', 0.75, 0.77)
  doTweenAlpha('flashFG', 'fg3', 0, 0.000000001, 'linear')
  setObjectCamera('fg3', 'other')
  
  makeAnimatedLuaSprite('fg','spacestage',-300,-400)
  scaleObject('fg',1.2,1.2)
  addAnimationByPrefix('fg','idle','Stage Bop',24, false)
  
  makeAnimatedLuaSprite('bg2','holoEmpty',-340,-300)
  scaleObject('bg2',1.15,1.1)
  addAnimationByPrefix('bg2','idle','Holo Boppers',24,false)
  setScrollFactor('bg2', 0.2, 0.2)
  
  makeLuaSprite('fg2','spacerocksFG',-1330,-650)
  scaleObject('fg2',1.3,1.3)
  setScrollFactor('fg2', 1.6, 1.6);
  
  
  makeLuaSprite('bg3','spacerocks',-260,-80)
  setScrollFactor('bg3', 0.4, 0.4);
  
  makeLuaSprite('bgB', 'blacc', -800, -300)
  doTweenAlpha('invis', 'bgB', 0, 0.000000001 , 'linear')
  setProperty('bgB.active', false)
  
   
  
  

  addLuaSprite('bg',false)
  addLuaSprite('bg4',false)
  addLuaSprite('bg2',false)
  addLuaSprite('bg3',false)
  addLuaSprite('fg',false)
  addLuaSprite('fg2',true)
  addLuaSprite('fg3',true)
  addLuaSprite('bgB',true)
  
  close(true);
  end
  
  
 