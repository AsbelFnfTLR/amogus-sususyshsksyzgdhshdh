local xx = 70
local yy = 170
local xx2 = 70
local yy2 = 170
local xx3 = -70
local yy3 = 90
local xx4 = -70
local yy4 = 90
local ofs = 20
local followchars = true

function onBeatHit()
if curBeat == 1 then
noteTweenAlpha("A1", 0, 0, 0.4, "linear")
noteTweenAlpha("A2", 1, 0, 0.4, "linear")
noteTweenAlpha("A3", 2, 0, 0.4, "linear")
noteTweenAlpha("A4", 3, 0, 0.4, "linear")
     end
end

function onCreate()
	precacheImage('characters/link ending')
	
	setProperty('skipCountdown',true);
	--layering
	setObjectOrder('boyfriendGroup', '1');
	setObjectOrder('dadGroup', '2');
	
	makeLuaSprite('bg', 'bg/background', -600, -200);
	scaleObject('bg', 0.7, 0.7);
	--setScrollFactor('bg', 0.5, 0.5);

	makeLuaSprite('log', 'bg/log', -600, -200);
	scaleObject('log', 0.7, 0.7);
	
	makeLuaSprite('over1', 'bg/over1mp', -600, -200);
	setBlendMode('over1', 'multiply');
	setProperty('over1.alpha', 0.13);
	scaleObject('over1', 0.7, 0.7);
	
	makeLuaSprite('over2', 'bg/over2add', -600, -200);
	setBlendMode('over2', 'add');
	setProperty('over2.alpha', 0.35);
	scaleObject('over2', 0.7, 0.7);
	
	makeLuaSprite('over3', 'bg/over3mp', -600, -200);
	setBlendMode('over3', 'multiply');
	scaleObject('over3', 0.7, 0.7);
	
	makeLuaSprite('fg', 'bg/foreground', -600, -200);
	scaleObject('fg', 0.7, 0.7);

	makeLuaSprite('bg2', 'bg/background2', -600, -200);
	scaleObject('bg2', 0.7, 0.7);
	--setScrollFactor('bg2', 0.5, 0.5);

	makeLuaSprite('log2', 'bg/log2', -600, -200);
	scaleObject('log2', 0.7, 0.7);

        makeLuaSprite('vignette', 'bg/vignette', 0, 0);
	setScrollFactor('vignette', 1, 1);
	scaleObject('vignette', 1, 1);
	setObjectCamera('vignette','hud')

	makeLuaSprite('blac', '', -500, -100)
	makeGraphic('blac', 1920, 1080, '000000')
	setScrollFactor('blac', 0, 0)
	setObjectCamera('blac','other')
	setProperty('blac.alpha',0);

	makeLuaSprite('white', '', -500, -100)
	makeGraphic('white', 1920, 1080, 'FFFFFF')
	setBlendMode('white', 'lighten');
	setScrollFactor('white', 0, 0)
	setObjectCamera('white','hud')
	setProperty('white.alpha',0);

	addLuaSprite('bg', false);
	addLuaSprite('log', false);
	
	addLuaSprite('over1', true);
	addLuaSprite('over2', true);
	addLuaSprite('over3', true);
	addLuaSprite('fg', true);
	addLuaSprite('vignette', true);
	addLuaSprite('blac',true)
	addLuaSprite('white',true)
		
	addLuaSprite('bg2', false);
	addLuaSprite('log2', false);

    makeLuaSprite('bartop','',0,-180)
    makeGraphic('bartop',1280,300,'000000')
    addLuaSprite('bartop',true)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,610)
    makeGraphic('barbot',1280,300,'000000')
    addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')

	--setPropertyFromClass('GameOverSubstate', 'characterName', 'heart');
	--setPropertyFromClass('GameOverSubstate', 'deathSoundName', ' ');
	--setPropertyFromClass('GameOverSubstate', 'loopSoundName', ' ');
end

function onUpdate(elapsed)
if curStep == 1152 then
		setProperty('iconP2.alpha',0);

		for i = 0, getProperty('opponentStrums.length')-1 do
			setPropertyFromGroup('opponentStrums',i,'visible',false);
			setPropertyFromGroup('opponentStrums',i,'y',130);
			setPropertyFromGroup('opponentStrums',i,'x',-9999);
end
end

if curStep >= 384 and curStep < 576 or curStep >= 1152 and curStep < 1236 then
		if mustHitSection == false then
		doTweenAngle('tween','camGame',0,0.2,'linear')
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
		doTweenAngle('tween','camGame',0.5,0.2,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
		doTweenAngle('tween','camGame',-0.5,0.2,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
		doTweenAngle('tween','camGame',0,0.2,'linear')
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
		doTweenAngle('tween','camGame',0.5,0.2,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
		doTweenAngle('tween','camGame',-0.5,0.2,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
      end
        else
if curStep < 1236 then
		if mustHitSection == false then
		doTweenAngle('tween','camGame',0,0.2,'linear')
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx3-ofs,yy3)
		doTweenAngle('tween','camGame',0.5,0.2,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
		doTweenAngle('tween','camGame',-0.5,0.2,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx3,yy3)
            end
        else
		doTweenAngle('tween','camGame',0,0.2,'linear')
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx4-ofs,yy4)
		doTweenAngle('tween','camGame',0.5,0.2,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx4+ofs,yy4)
		doTweenAngle('tween','camGame',-0.5,0.2,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx4,yy4-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx4,yy4+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx4,yy4)
                        end
                  end
            end
      end
end