/// draw_dialogue(
///     ["Hello brother", GOLDIE, NEUTRAL], 
///     ["Hi", FERRIS, PISSED]
/// );
function draw_dialogue() {
	
	var _sayings = [];

	for (var _i = 0; _i < argument_count; _i++)
    {
        array_push(_sayings, argument[_i]);
    }

	var _box = instance_create_layer(0, 0, "UI", obj_dialogue, {
		sayings: _sayings
	});

}