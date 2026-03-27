package flight.geom;

@:js.import("@flighthq/flight", "Vector3")
extern class Vector3 {
	static var X_AXIS(default, never):Vector3;
	static var Y_AXIS(default, never):Vector3;
	static var Z_AXIS(default, never):Vector3;
	var length:Float;
	var lengthSquared:Float;
	var x:Float;
	var y:Float;
	var z:Float;
	function new(?x:Float, ?y:Float, ?z:Float);
	function add(b:Vector3):Vector3;
	static function angleBetween(a:Vector3, b:Vector3):Float;
	function clone():Vector3;
	function copyFrom(source:Vector3):Void;
	function cross(other:Vector3):Vector3;
	static function distance(a:Vector3, b:Vector3):Float;
	static function distanceSquared(a:Vector3, b:Vector3):Float;
	function dot(b:Vector3):Float;
	function equals(b:Null<Vector3>):Bool;
	// static function fromRaw(raw:Readonly<RawVector3>):Vector3;
	function nearEquals(b:Vector3, tolerance:Float = 1e-6):Bool;
	function negate():Void;
	function normalize():Float;
	function project():Void;
	function scale(scalar:Float):Void;
	function setTo(x:Float, y:Float, z:Float):Void;
	function subtract(other:Vector3):Vector3;
}
