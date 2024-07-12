
function onEvent(name, value1, value2)
   	if name == 'scream' then
		makeLuaSprite('murz', 'MurZ', 50, -200)
    		addLuaSprite('murz', true)
		setGraphicSize('murz', 1200)
		setObjectCamera('murz', 'other')
		setProperty('murz.visible', false)
		cameraShake('other', 0.02, value2)
		cameraShake('game', 0.01, value2)	
		cameraShake('hud', 0.01, value2)
		if value1 == 'start' then
			setProperty('murz.visible', true)
		end
		if value1 == 'end' then
			setProperty('murz.visible', false)
		end
	end
end


