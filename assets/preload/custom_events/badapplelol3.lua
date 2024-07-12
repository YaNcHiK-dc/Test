function onCreatePost()
	makeLuaSprite('whitebg', '', 0, 0)
	setScrollFactor('whitebg', 0, 0)
	makeGraphic('whitebg', 3840, 2160, 'ffffff')
	addLuaSprite('whitebg', false)
	setProperty('whitebg.alpha', 0)
	screenCenter('whitebg', 'xy')
end
function onEvent(n, v1, v2)
	if n == 'badapplelol3' and string.lower(v1) == 'a' then
		doTweenAlpha('applebadxd69', 'whitebg', 1, v2, 'linear')
		doTweenColor('badapplexd', 'boyfriend', '000000', v2, 'linear')
		doTweenAlpha('badapplexd1', 'dad', 'ffffff', v2, 'linear')
		doTweenAlpha('badapplexd2', 'gf', 'ffffff', v2, 'linear')
	end
	if n == 'badapplelol3' and string.lower(v1) == 'b' then
		doTweenAlpha('applebadxd', 'whitebg', 0, v2, 'linear')
		doTweenColor('badapplexd', 'boyfriend', 'FFFFFF', v2, 'linear')
		doTweenColor('badapplexd4', 'dad', 'FFFFFF', v2, 'linear')
		doTweenColor('badapplexd5', 'gf', 'FFFFFF', v2, 'linear')
	end
end