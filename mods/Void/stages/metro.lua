function onCreate()
  --background
  makeLuaSprite('bg','metroSky',-300,-220)
  setScrollFactor('bg', 0.1, 0.1);
  scaleObject('bg',1.3,1.3)
  
  makeLuaSprite('bg5','metroSkyFlash',-300,-220)
  setScrollFactor('bg5', 0.1, 0.1);
  scaleObject('bg5',1.3,1.3)
  
  makeLuaSprite('bg2','metroCityBG',-200, 230)
  setScrollFactor('bg2', 0.2, 0.2);
  scaleObject('bg2',1.2,1.2)
  
  makeLuaSprite('bg3', 'metroLightB', -120, 50)
  setScrollFactor('bg3',0.4,0.4)
  scaleObject('bg3',1.2,1.2)
  setProperty('bg3.angle',-20)
  
  makeLuaSprite('bg4', 'metroLightG', 880, 50)
  setScrollFactor('bg4',0.4,0.4)
  scaleObject('bg4',1.1,1.1)
  setProperty('bg4.angle',20)
  
  makeLuaSprite('fg', 'metroRoof', -430, -20)
  scaleObject('fg', 1.4,1.4)
 
  
 
 
  
  

  addLuaSprite('bg5',false)
  addLuaSprite('bg', false)
  addLuaSprite('bg2',false)
  addLuaSprite('bg3',false)
  addLuaSprite('bg4',false)
  addLuaSprite('fg',false)
  
  close(true);
  end
  
  
 