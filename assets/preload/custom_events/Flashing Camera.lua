function onEvent(name, value1, value2)
	if name == "Flashing Camera" then
		cameraFlash('camGame','FFFFFF',0.5)
		makeLuaSprite('image', value1, -100, -200);
		addLuaSprite('image', true);
		doTweenColor('hello', 'image', 'FFFFFF', 0.1, 'quartIn');
		setObjectCamera('image', 'other');
		runTimer('wait', value2);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'image', 0, 0.2, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('image', true);
	end
end