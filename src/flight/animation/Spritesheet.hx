package flight.animation;

import flight.assets.TextureAtlas;

@:js.import("@flighthq/flight", "Spritesheet")
extern class Spritesheet
{
	var atlas:Null<TextureAtlas>;
	var numAnimations:Int;
	function new(?atlas:TextureAtlas, ?animations:Array<SpritesheetAnimation>);
	function addAnimation(animation:SpritesheetAnimation):Void;
	function getAnimation(index:Float):Null<SpritesheetAnimation>;
}
