function onCreate()
--lol nothing
--more like lol SOMETHING!!!


makeLuaSprite('vignette', 'vignette', -120, -50);
setScrollFactor('vignette',0,0)
setProperty('vignette.alpha',0)
setBlendMode('vignette', 'add')
setObjectCamera('vignette', 'other')
scaleObject('vignette', 1, 1);

makeLuaSprite('redstuff', 'vignette', -120, -50);
setScrollFactor('redstuff',0,0)
setProperty('redstuff.alpha',1)
setBlendMode('redstuff', 'multiply')
setObjectCamera('redstuff', 'other')
scaleObject('redstuff', 1.1, 1.1);

makeLuaSprite('mario', 'mario', -1000, -700);
setScrollFactor('mario', 1, 1);

addLuaSprite('vignette', true);
addLuaSprite('redstuff', true);
addLuaSprite('mario', false);


makeLuaSprite('flash', '', 0, 0);
makeGraphic('flash',1500,900,'000000')
  setLuaSpriteScrollFactor('flash',0,0)
  addLuaSprite('flash', true);
  setProperty('flash.scale.y',2)
  setProperty('flash.scale.x',2)
  setProperty('flash.alpha',1)
setProperty('flash.alpha',1)
setObjectCamera('flash', 'other')



end


function onCreatePost()
    scaleObject('gf', 1.5, 0);
    scaleObject('dad', 1.5, 0);
    setProperty('camGAME.alpha', 0)
end

function onSongStart()

    
end

function onStepHit()
    if curStep == 2 then
        noteTweenAlpha('NoteDIE1', 0, 0, 0.01, 'linear')
        noteTweenAlpha('NoteDIE2', 1, 0, 0.01, 'linear')
        noteTweenAlpha('NoteDIE3', 2, 0, 0.01, 'linear')
        noteTweenAlpha('NoteDIE4', 3, 0, 0.01, 'linear') 
    end
    if curStep == 8 then
        doTweenAlpha("esgisig", "flash", 0, 1, "cubeOut")
    end
    if curStep == 71 then
        noteTweenAlpha('notehi1', 0, 1, 0.5, 'cubeOut')
        noteTweenAngle('noteyo1', 0, 360, 0.5, 'elasticOut')
    end
    if curStep == 74 then
        noteTweenAlpha('notehi2', 1, 1, 0.5, 'cubeOut')
        noteTweenAngle('noteyo2', 1, 360, 0.5, 'elasticOut')
    end
    if curStep == 75 then
        noteTweenAlpha('notehi3', 2, 1, 0.5, 'cubeOut')
        noteTweenAngle('noteyo3', 2, 360, 0.5, 'elasticOut')
    end
    if curStep == 76 then
        noteTweenAlpha('notehi4', 3, 1, 0.5, 'cubeOut') 
        noteTweenAngle('noteyo4', 3, 360, 0.5, 'elasticOut') 
    end

end
function onBeatHit()

    if curBeat == 18 then
        doTweenY("cosmicbfappear", "dad.scale", 1, 1, "cubeOut")
        doTweenY("cosmicbfappear2", "dad", getProperty('dad.y') - 100, 1, "cubeOut")
        doTweenX("cosmicbfappear3", "dad.scale", 1, 1, "cubeOut")

    end

    if curBeat == 80 then
        doTweenY("cosmicbfappear", "gf.scale", 1, 1, "cubeOut")
        doTweenX("cosmicbfappear3", "gf.scale", 1, 1, "cubeOut")
    end

    if curBeat == 296 then
     doTweenY("cosmicbfappear", "gf.scale", 0, 1, "cubeOut")
     doTweenX("cosmicbfappear3", "gf.scale", 1.5, 1, "cubeOut")
     doTweenY("cosmicbfappea4", "dad.scale", 0, 1, "cubeOut")
     doTweenX("cosmicbfappear5", "dad.scale", 1.5, 1, "cubeOut")
    end
end
