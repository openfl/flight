package flight.geom;

@:js.import("@flighthq/flight", "Rectangle")
extern class Rectangle
{
	var bottom:Float;
	var bottomRight:Vector2;
	var height:Float;
	var isFlippedX(default, never):Bool;
	var isFlippedY(default, never):Bool;
	var left:Float;
	var maxX(default, never):Float;
	var maxY(default, never):Float;
	var minX(default, never):Float;
	var minY(default, never):Float;
	var normalizedBottomRight:Vector2;
	var normalizedTopLeft:Vector2;
	var right:Float;
	var size:Vector2;
	var top:Float;
	var topLeft:Vector2;
	var width:Float;
	var x:Float;
	var y:Float;
	function new();
	function clone():Rectangle;
	function contains(x:Float, y:Float):Bool;
	function containsPoint(vector:Vector2):Bool;
	function containsRect(other:Rectangle):Bool;
	function copyFrom(source:Rectangle):Void;
	function equals(b:Null<Rectangle>):Bool;
	// static function fromRaw(raw: Readonly<RawRectangle>): Rectangle ;
	function inflate(dx:Float, dy:Float):Void;
	function inflatePoint(sourceVec2:Vector2):Void;
	function intersection(b:Rectangle):Rectangle;
	function intersects(b:Rectangle):Bool;
	function isEmpty():Bool;
	function normalize():Void;
	function offset(dx:Float, dy:Float):Void;
	function offsetPoint(point:Vector2):Void;
	function setEmpty():Void;
	function setTo(x:Float, y:Float, width:Float, height:Float):Void;
	function union(other:Rectangle):Rectangle;
}
