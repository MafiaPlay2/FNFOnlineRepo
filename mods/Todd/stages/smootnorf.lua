function onCreate()
    makeLuaSprite('bg', 'smootbg', -600, -300)
    setScrollFactor('bg', 0.9, 0.9)
    setProperty('bg.active', false)
    addLuaSprite('bg', false)

    close()
end
