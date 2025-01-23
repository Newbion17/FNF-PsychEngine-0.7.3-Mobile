function onCreate()

    makeAnimatedLuaSprite('comicbf', 'iconcosmic', 500, 580)
	setScrollFactor('comicbf', 0, 0);
    setObjectCamera('comicbf', 'other')
    addLuaSprite('comicbf', true);
    setProperty('comicbf.alpha', 0)

end

function onUpdatePost()
    setProperty('iconP2.alpha', 0)
    setProperty('comicbf.x', getProperty('iconP2.x'))
    setProperty('comicbf.y', getProperty('iconP2.y'))

end

function onBeatHit()

    addAnimationByPrefix('comicbf','iconcosmic idle','iconcosmic idle',10,true)

    if curBeat == 18 then
        doTweenAlpha("sgediisgop", "comicbf", 1, 0.3, "cubeOut")
        doTweenAngle("FUCK", "comicbf", 360, 1, "cubeOut")
    end
end