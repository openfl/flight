package flight.materials;

@:js.import("@flighthq/flight", "ColorTransform")
extern class ColorTransform
{
	var redMultiplier:Float;
	var greenMultiplier:Float;
	var blueMultiplier:Float;
	var alphaMultiplier:Float;
	var redOffset:UInt;
	var greenOffset:UInt;
	var blueOffset:UInt;
	var alphaOffset:UInt;
	var offsetRGB:UInt;
	var offsetRGBA:UInt;
	function new(?redMultiplier:Float, ?greenMultiplier:Float, ?blueMultiplier:Float, ?alphaMultiplier:Float, ?redOffset:Float, ?greenOffset:Float,
		?blueOffset:Float, ?alphaOffset:Float,);
	function clone():ColorTransform;
	function concat(other:ColorTransform):Void;
	function copyFrom(source:ColorTransform):Void;
	function equals(b:ColorTransform):Bool;
	// static function fromRaw(raw:Readonly<RawColorTransform>):ColorTransform;
	function identity():Void;
	function invert():Void;
	function isIdentity(compareAlphaMultiplier:Bool = true):Bool;
	function multiplierEquals(b:ColorTransform, compareAlpha:Bool = true):Bool;
	function offsetEquals(b:ColorTransform, compareAlpha:Bool = true):Bool;
	function setTo(redMultiplier:Float, greenMultiplier:Float, blueMultiplier:Float, alphaMultiplier:Float, redOffset:UInt, greenOffset:UInt, blueOffset:UInt,
		alphaOffset:UInt):Void;
	function toArrays(outColorMultipliers:Array<Float>, outColorOffsets:Array<UInt>):Void;
}
