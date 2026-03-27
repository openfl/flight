package flight.geom;

import js.lib.Float32Array;

@:js.import("@flighthq/flight", "Matrix4")
extern class Matrix4 {
	var determinant(default, never):Float;
	var isAffine(default, never):Bool;
	var m:Float32Array;
	var position:Vector3;
	function new(?m00:Float, ?m01:Float, ?m02:Float, ?m03:Float, ?m10:Float, ?m11:Float, ?m12:Float, ?m13:Float, ?m20:Float, ?m21:Float, ?m22:Float,
		?m23:Float, ?m30:Float, ?m31:Float, ?m32:Float, ?m33:Float);
	function append(other:Matrix4):Void;
	function appendRotation(degrees:Float, axis:Vector4, ?pivotPoint:Vector4):Void;
	function appendScale(xScale:Float, yScale:Float, zScale:Float):Void;
	function appendTranslation(x:Float, y:Float, z:Float):Void;
	function clone():Matrix4;
	function copyColumnFrom(column:Float, source:Vector4):Void;
	function copyColumnTo(column:Float, target:Vector4):Void;
	function copyFrom(source:Matrix4):Void;
	function copyRowFrom(row:Float, source:Vector4):Void;
	function copyRowTo(row:Float, target:Vector4):Void;
	static function create2D(a:Float, b:Float, c:Float, d:Float, ?tx:Float, ?ty:Float):Matrix4;
	static function createOrtho(left:Float, right:Float, bottom:Float, top:Float, zNear:Float, zFar:Float):Matrix4;
	static function createPerspective(fov:Float, aspect:Float, zNear:Float, zFar:Float):Matrix4;
	function equals(b:Null<Matrix4>):Bool;
	static function fromMatrix(source:Matrix):Matrix4;
	static function fromMatrix3(source:Matrix3):Matrix4;
	// static function fromRaw(raw:Readonly<RawMatrix4>):Matrix4;
	function get(row:Float, column:Float):Float;
	function identity():Void;
	static function interpolate(a:Matrix4, b:Matrix4, t:Float):Matrix4;
	function inverse():Bool;
	function multiply(b:Matrix4):Void;
	function prepend(other:Matrix4):Void;
	function prependRotation(degrees:Float, axis:Vector4, ?pivotPoint:Vector4):Void;
	function prependScale(xScale:Float, yScale:Float, zScale:Float):Void;
	function prependTranslation(x:Float, y:Float, z:Float):Void;
	function rotate(axis:Vector3, degrees:Float):Void;
	function scale(sx:Float, sy:Float, sz:Float):Void;
	function set(row:Float, column:Float, value:Float):Void;
	function set2D(a:Float, b:Float, c:Float, d:Float, ?tx:Float, ?ty:Float):Void;
	function setOrtho(left:Float, right:Float, bottom:Float, top:Float, zNear:Float, zFar:Float):Void;
	function setPerspective(fov:Float, aspect:Float, zNear:Float, zFar:Float):Void;
	function setTo(m00:Float, m01:Float, m02:Float, m03:Float, m10:Float, m11:Float, m12:Float, m13:Float, m20:Float, m21:Float, m22:Float, m23:Float,
		m30:Float, m31:Float, m32:Float, m33:Float,):Void;
	function transformPoint(point:Vector3):Vector3;
	function transformVector(vector:Vector4):Vector4;
	function transformVectors(source:Float32Array, out:Float32Array):Void;
	function translate(tx:Float, ty:Float, tz:Float):Void;
	function transpose():Void;
}
