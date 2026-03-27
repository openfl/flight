package flight.geom;

import js.lib.Float32Array;

@:js.import("@flighthq/flight", "Matrix3")
extern class Matrix3 {
	var m(default, never):Float32Array;
	var isAffine(default, never):Bool;
	function new(?m00:Float, ?m01:Float, ?m02:Float, ?m10:Float, ?m11:Float, ?m12:Float, ?m20:Float, ?m21:Float, ?m22:Float);
	function clone():Matrix3;
	function copyColumnFrom(column:Float, source:Vector3):Void;
	function copyColumnTo(column:Float, target:Vector3):Void;
	function copyFrom(source:Matrix3):Void;
	function copyRowFrom(row:Float, source:Vector3):Void;
	function copyRowTo(row:Float, target:Vector3):Void;
	function equals(b:Null<Matrix3>):Bool;
	static function fromMatrix(source:Matrix):Matrix3;
	static function fromMatrix4x4(source:Matrix4):Matrix3;
	//   static function fromRaw(raw: Readonly<RawMatrix3>): Matrix3;
	function get(row:Int, column:Int):Float;
	function identity():Void;
	function inverse():Void;
	function multiply(b:Matrix3):Void;
	function rotate(theta:Float):Void;
	function scale(sx:Float, sy:Float):Void;
	function set(row:Int, column:Int, value:Float):Void;
	function setTo(m00:Float, m01:Float, m02:Float, m10:Float, m11:Float, m12:Float, m20:Float, m21:Float, m22:Float):Void;
	function translate(tx:Float, ty:Float):Void;
}
