function onUpdate()
            if getProperty('dad.animation.curAnim.name') == 'idle' and curStep < 384 then
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
		setProperty('dad.angle',-10)
		setProperty('dad.x',-210)
		setProperty('dad.y',-50)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
		setProperty('dad.angle',10)
		setProperty('dad.x',-190)
		setProperty('dad.y',-40)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
		setProperty('dad.angle',2)
		setProperty('dad.x',-200)
		setProperty('dad.y',-50)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
		setProperty('dad.angle',-8)
		setProperty('dad.x',-200)
		setProperty('dad.y',-40)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
		setProperty('dad.angle',0)
		setProperty('dad.x',-200)
		setProperty('dad.y',-50)
            end
            end
            if curStep >= 384 then
		setProperty('dad.angle',0)
		setProperty('dad.x',-200)
		setProperty('dad.y',-50)
	end
end