package flight.geom;

@:js.import("@flighthq/flight", "Vector4")
extern class Vector4 {
	static var W_UNIT(default, never):Vector4;
	static var X_AXIS(default, never):Vector4;
	static var Y_AXIS(default, never):Vector4;
	static var Z_AXIS(default, never):Vector4;
	var length:Float;
	var lengthSquared:Float;
	var w:Float;
	var x:Float;
	var y:Float;
	var z:Float;
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float);
	function add(b:Vector4):Vector4;
	static function angleBetween(a:Vector4, b:Vector4):Float;
	function clone():Vector4;
	function copyFrom(source:Vector4):Void;
	function cross(other:Vector4):Vector4;
	static function distance(a:Vector4, b:Vector4):Float;
	function distanceSquared(a:Vector4, b:Vector4):Float;
	function dot(b:Vector4):Float;
	function equals(b:Null<Vector4>):Bool;
	//   static function fromRaw(raw: Readonly<RawVector4>): Vector4 ;
	static function fromVector2(source:Vector2):Vector4;
	static function fromVector3(raw:Vector3):Vector4;
	function nearEquals(b:Vector4, tolerance:Float = 1e-6):Bool;
	function negate():Void;
	function normalize():Float;
	function project():Void;
	function scale(scalar:Float):Void;
	function setTo(x:Float, y:Float, z:Float, w:Float):Void;
	function subtract(other:Vector4):Vector4;
}
