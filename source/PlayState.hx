package;

import flixel.FlxState;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		// Add UI view
		add(new View());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
