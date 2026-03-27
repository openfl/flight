package flight.animation;

@:js.import("@flighthq/flight", "SpritesheetAnimation")
extern class SpritesheetAnimation
{
	var frameDuration:Int;
	var frames:Array<Int>;
	var label:Null<String>;
	var loop:Bool;
	function new(label ? : string, frames ? : number[], frameDuration ? : number, loop ? : boolean);
}
