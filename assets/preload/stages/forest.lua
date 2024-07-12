local garnrun = 0
local pigrun = 0
local randomizegarn = true
local left = false
local flip = false
local shake = false
local pigl = 0
local regulator = true
local newflip = false
local dflip = false
local go = false
function onCreatePost()
	makeLuaSprite('bg', 'bg', -400, -300)
	addLuaSprite('bg')
	setGraphicSize('bg', 2000)

	makeLuaSprite('sprite1', 'images', 1500, 400)
	addLuaSprite('sprite1')

	makeAnimatedLuaSprite('sprite3', '1', 600, 400)
	addAnimationByPrefix('sprite3', 'i', 'run', 24, false)
	setGraphicSize('sprite3', 200)
	setProperty('sprite3.visible', false)
	addLuaSprite('sprite3')

	makeAnimatedLuaSprite('sprite4', '1', 600, 400)
	addAnimationByPrefix('sprite4', 'i', 'idle', 24, true)
	setGraphicSize('sprite4', 200)
	setProperty('sprite4.visible', false)
	addLuaSprite('sprite4')

	makeLuaSprite('sprite2', 'Conanhitsingle', pigl, 500)
	setGraphicSize('sprite2', 300)
	

	makeLuaSprite('pUpperBar', 'empty', 0, 0)
	makeGraphic('pUpperBar', 19280, 19920, '000000')
	setObjectCamera('pUpperBar', 'other')
	addLuaSprite('pUpperBar', false)


	pigl = math.random(0, 400);
end

function run1()
	doTweenX('tween1', 'sprite1', -500, 6, 'quadInOut')
end
function onBeatHit()
	if curBeat == 1 then
		
		doTweenAlpha('black30000', 'pUpperBar', 0, 5, 'linear');
	end
	if curBeat == 220 then
		shake = true
		setProperty('sprite3.visible', true)
		go = true
	end
	if curBeat == 256 then
		shake = false
		
	end
end

function mod()
	doTweenX('tweeneen'..pigl, 'sprite3', 950, 1, 'linear')
	setProperty('sprite3.flipX', false)
	doTweenX('tweeneen'..garnrun, 'sprite4', 950, 1, 'linear')
	setProperty('sprite4.flipX', false)
	objectPlayAnimation('sprite3', 'i', false)
	if go == true then
	
		setProperty('sprite4.visible', false)
		setProperty('sprite3.visible', true)
	end

end

function mod2()
	if dflip == true then
		doTweenX('tweeneen'..pigl, 'sprite3', 800, 1, 'linear')
		setProperty('sprite3.flipX', false)
		doTweenX('tweeneen'..garnrun, 'sprite4', 800, 1, 'linear')
		setProperty('sprite4.flipX', false)
		objectPlayAnimation('sprite3', 'i', false)
	end
	if dflip == false then
		doTweenX('tweeneen'..pigl, 'sprite3', 800, 1, 'linear')
		setProperty('sprite3.flipX', true)
		doTweenX('tweeneen'..garnrun, 'sprite4', 800, 1, 'linear')
		setProperty('sprite4.flipX', true)
		objectPlayAnimation('sprite3', 'i', false)
	end
	if go == true then
	
		setProperty('sprite4.visible', false)
		setProperty('sprite3.visible', true)
	end

end

function mod3()
	doTweenX('tweeneen'..pigl, 'sprite3', 700, 1, 'linear')
	setProperty('sprite3.flipX', true)
	doTweenX('tweeeen'..garnrun, 'sprite4', 700, 1, 'linear')
	setProperty('sprite4.flipX', true)
	objectPlayAnimation('sprite3', 'i', false)
	if go == true then
	
			setProperty('sprite4.visible', false)
			setProperty('sprite3.visible', true)
	end
end

function move()
	doTweenX('tweeen'..pigl, 'sprite2', 200, 3, 'linear')
	setProperty('sprite2.flipX', false)
end

function move1()
	doTweenX('tweeen'..pigl, 'sprite2', 500, 3, 'linear')
	setProperty('sprite2.flipX', false)
end

function move2()
	doTweenX('tweeen'..pigl, 'sprite2', -100, 3, 'linear')
	setProperty('sprite2.flipX', true)
end

function move3()
	doTweenX('tweeen'..pigl, 'sprite2', -200, 3, 'linear')
	setProperty('sprite2.flipX', true)
end

function run2()
	doTweenX('tween2', 'sprite1', 2000, 6, 'linear')
end

function onUpdatePost()
	if randomizegarn == true then
		garnrun = math.random(1, 3000);
		pigrun = math.random(0, 2000);
		
	end
	
	if shake == true then
		cameraShake('game', 0.0025, 0.1)
		cameraShake('hud', 0.0025, 0.1)
	end
	if flip == false then
		if pigrun == 100 then
			move()
			newflip = false
		end
	end
	
	if garnrun == 400 then
		mod()
		dflip = false
	end

	if garnrun == 550 then
		mod2()
		
	end


	if garnrun == 600 then
		mod3()
		dflip = true
	end

	if pigrun == 1200 then
		move1()
		flip = true
		newflip = false
	end

	if newflip == false then
		if pigrun == 1700 then
			move2()
			flip = false
			
		end
	end

	if pigrun == 500 then
		move3()
		flip = false
		newflip = true
	end

	if left == false then
		if garnrun == 1000 then
			run1()
		end
	end
	
	if left == true then
		if garnrun == 900 then
		
			run2()
		end
	end



	
end

function onTweenCompleted(tag)
	if go == false then

	end
	if go == true then
		if tag == 'tweeneen'..pigl then
			setProperty('sprite4.visible', true)
			setProperty('sprite3.visible', false)
		end
	end

	if tag == 'tween1' then
		left = true
	end
	if tag == 'tween2' then
		left = false
	end
	
end

	

