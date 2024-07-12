function onCreate()
    makeLuaSprite('black', '', 0, 0);
    makeGraphic('black', 1280, 720, '000000');
    setObjectCamera('black', 'hud');
    setProperty('black.alpha', 0);
    addLuaSprite('black', false);
end

function onEvent(name, value1, value2)
    if name == 'Black_End' and string.lower(value1) == 'start' then
        doTweenAlpha('black30000', 'black', 1, value2, 'linear');
    end
    if name == 'Black_End' and string.lower(value1) == 'end' then
        doTweenAlpha('black40000', 'black', 0, value2, 'linear');
    end
end