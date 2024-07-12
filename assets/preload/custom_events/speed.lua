-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'speed' then
		setProperty('camera_speed', value1);
	end
end