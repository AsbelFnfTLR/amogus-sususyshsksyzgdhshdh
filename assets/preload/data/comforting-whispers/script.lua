local allowCountdown = false;
local playDialogue = false;
local doneYep = false;
local ohyeah = false;
function onCreatePost()
	noteTweenAlpha('EF',0 , 0 , 0.01, 'linear');
	noteTweenAlpha('FF',1 , 0 , 0.01, 'linear');
	noteTweenAlpha('GF',2 , 0 , 0.01, 'linear');
	noteTweenAlpha('HF',3 , 0 , 0.01, 'linear');
	setProperty('bg2.alpha',0.25);

	doTweenY('barbot', 'barbot', 570, 0.01, 'linear')
	doTweenY('bartop', 'bartop', -140, 0.01, 'linear')
	makeLuaSprite('blackfuck', 'bg/black', 0, 0)
	setObjectCamera('blackfuck', 'hud')
	setGraphicSize('blackfuck', screenWidth, screenHeight)
	setScrollFactor('blackfuck', 0, 0)
	setProperty('blackfuck.alpha', 1)
	
	if isStoryMode then
		addLuaSprite('blackfuck', true)
else
	setProperty('blac.alpha',1);
	end
end

function onSongStart()
setProperty('over1.alpha',1);
setProperty('over2.alpha',1);
setProperty('over3.alpha',1);
end

function onStepHit()
if curStep >= 1 then
doTweenAlpha('bg2', 'bg2', 1, 4, 'linear');
doTweenY('barbot', 'barbot', 610, 4, 'linear')
doTweenY('bartop', 'bartop', -180, 4, 'linear')
doTweenAlpha('blac', 'blac', 0, 1, 'linear');
doTweenAlpha('over1', 'over1', 0.7, 1, 'circInOut');
doTweenAlpha('over2', 'over2', 0.35, 1, 'circInOut');
doTweenAlpha('over3', 'over3', 0.7, 1, 'circInOut');
doTweenAlpha('vignette', 'vignette', 0, 1, 'circInOut');
end

if curStep >= 96 then
doTweenY('barbot', 'barbot', 630, 0.3, 'linear')
doTweenY('bartop', 'bartop', -200, 0.3, 'linear')
end

if curStep >= 372 then
	noteTweenAlpha('EF',0 , 1 , 0.3, 'circIn');
	noteTweenAlpha('FF',1 , 1 , 0.3, 'circIn');
	noteTweenAlpha('GF',2 , 1 , 0.3, 'circIn');
	noteTweenAlpha('HF',3 , 1 , 0.3, 'circIn');
end

if curStep >= 384 then
doTweenY('barbot', 'barbot', 650, 0.3, 'linear')
doTweenY('bartop', 'bartop', -220, 0.3, 'linear')
doTweenAlpha('over1', 'over1', 1, 2, 'circOut');
doTweenAlpha('over2', 'over2', 0.75, 2, 'circOut');
doTweenAlpha('over3', 'over3', 1, 2, 'circOut');
doTweenAlpha('vignette', 'vignette', 0.25, 2, 'circOut');
end

if curStep >= 576 then
doTweenY('barbot', 'barbot', 630, 0.3, 'linear')
doTweenY('bartop', 'bartop', -200, 0.3, 'linear')
doTweenAlpha('over1', 'over1', 0.7, 2, 'circOut');
doTweenAlpha('over2', 'over2', 0.5, 2, 'circOut');
doTweenAlpha('over3', 'over3', 0.7, 2, 'circOut');
doTweenAlpha('vignette', 'vignette', 0.25, 2, 'circOut');
end

if curStep >= 672 then
doTweenAlpha('over1', 'over1', 1, 2, 'circOut');
doTweenAlpha('over3', 'over3', 1, 2, 'circOut');
end

if curStep >= 768 then
doTweenY('barbot', 'barbot', 610, 0.3, 'linear')
doTweenY('bartop', 'bartop', -180, 0.3, 'linear')
doTweenAlpha('over2', 'over2', 0.85, 2, 'circOut');
doTweenAlpha('vignette', 'vignette', 0.5, 2, 'circOut');
end

if curStep >= 960 and curStep < 1152 then
noteTweenAlpha('EF',0 , 0.5 , 7, 'linear');
noteTweenAlpha('FF',1 , 0.5 , 7, 'linear');
noteTweenAlpha('GF',2 , 0.5 , 7, 'linear');
noteTweenAlpha('HF',3 , 0.5 , 7, 'linear');
doTweenAlpha('dad', 'dad', 0.5, 7, 'linear');
doTweenAlpha('bg2', 'bg2', 0.25, 7, 'linear');
doTweenAlpha('over2', 'over2', 1, 7, 'linear');
doTweenAlpha('vignette', 'vignette', 1, 7, 'linear');
doTweenY('barbot', 'barbot', 720, 7, 'linear')
doTweenY('bartop', 'bartop', -300, 7, 'linear')
doTweenAlpha('white', 'white', 0.25, 7, 'linear');
end

if curStep >= 1140 then
noteTweenAlpha('EF',0 , 0 , 0.2, 'circIn');
noteTweenAlpha('FF',1 , 0 , 0.2, 'circIn');
noteTweenAlpha('GF',2 , 0 , 0.2, 'circIn');
noteTweenAlpha('HF',3 , 0 , 0.2, 'circIn');
doTweenAlpha('dad', 'dad', 0, 0.25, 'circIn');
doTweenAlpha('white', 'white', 1, 0.25, 'circIn');
end

if curStep >= 1152 then
doTweenAlpha('bg2', 'bg2', 0, 0.01, 'linear');
doTweenAlpha('log2', 'log2', 0, 0.01, 'linear');
doTweenY('barbot', 'barbot', 720, 0.01, 'linear')
doTweenY('bartop', 'bartop', -300, 0.01, 'linear')
doTweenAlpha('dad', 'dad', 0, 0.01, 'linear');
doTweenAlpha('over2', 'over2', 0, 0.45, 'circIn');
doTweenAlpha('vignette', 'vignette', 1, 0.01, 'circIn');
doTweenAlpha('white', 'white', 0, 0.5, 'circOut');
doTweenAlpha('blac', 'blac', 1, 0.01, 'circIn');
end

if curStep >= 1154 then
doTweenAlpha('blac', 'blac', 0, 0.35, 'circIn');
doTweenAlpha('vignette', 'vignette', 0.25, 0.45, 'circIn');
end

if curStep >= 1188 then
noteTweenAlpha('EF',0 , 0.25, 0.5, 'circInOut');
noteTweenAlpha('FF',1 , 0.25, 0.5, 'circInOut');
noteTweenAlpha('GF',2 , 0.25, 0.5, 'circInOut');
noteTweenAlpha('HF',3 , 0.25, 0.5, 'circInOut');
doTweenAlpha('dad', 'dad', 0.25, 0.5, 'circInOut');
doTweenAlpha('vignette', 'vignette', 0, 0.5, 'circInOut');
doTweenAlpha('over2', 'over2', 0.75, 0.5, 'circInOut');
end

if curStep >= 1224 then
noteTweenAlpha('EF',0 , 0, 0.45, 'circInOut');
noteTweenAlpha('FF',1 , 0, 0.45, 'circInOut');
noteTweenAlpha('GF',2 , 0, 0.45, 'circInOut');
noteTweenAlpha('HF',3 , 0, 0.45, 'circInOut');
doTweenAlpha('dad', 'dad', 0, 0.45, 'circInOut');
doTweenAlpha('over2', 'over2', 0.25, 0.45, 'circInOut');
doTweenAlpha('vignette', 'vignette', 0, 0.45, 'circInOut');
end
end

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if isStoryMode then
		if not allowCountdown and isStoryMode and not seenCutscene then
			startVideo('cut1');
			allowCountdown = true;
			playDialogue = true;
			return Function_Stop;
		elseif playDialogue then
			setProperty('inCutscene', true);
			runTimer('startDialogue', 0.8);
			playDialogue = false;
			return Function_Stop;
		end
		if not doneYep and isStoryMode and not seenCutscene and ohyeah then
			doTweenAlpha('lul', 'blackfuck', 0, 0.2, 'quadOut');
			triggerEvent('Play Animation','enter','dad');
			runTimer('fadeTimer', 1.5, 1);
			ohyeah = false;
			return Function_Stop;
		end
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', '');
		ohyeah = true;
	end
	 if tag == 'fadeTimer' then
	    doneYep = true;
		startCountdown();
	end
end