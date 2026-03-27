package flight.geom;

import js.lib.Float32Array;

@:js.import("@flighthq/flight", "Matrix")
extern class Matrix {
	var a:Float;
	var b:Float;
	var c:Float;
	var d:Float;
	var tx:Float;
	var ty:Float;
	function new(?a:Float, ?b:Float, ?c:Float, ?d:Float, ?tx:Float, ?ty:Float);
	function clone():Matrix;
	function concat(b:Matrix):Matrix;
	function copyColumnFrom(column:Int, source:Vector3):Void;
	function copyColumnTo(column:Int, target:Vector3):Void;
	function copyFrom(source:Matrix):Void;
	function copyRowFrom(row:Int, source:Vector3):Void;
	function copyRowTo(row:Int, target:Vector3):Void;
	static function createGradientTransform(width:Float, height:Float, rotation:Float = 0, tx:Float = 0, ty:Float = 0):Matrix;
	static function createTransform(scaleX:Float, scaleY:Float, rotation:Float = 0, tx:Float = 0, ty:Float = 0):Matrix;
	function equals(b:Null<Matrix>, compareTranslation:Bool = true):Bool;
	static function fromFloat32Array(source:Float32Array, offset:Float):Matrix;
	static function fromMatrix3(source:Matrix3):Matrix;
	static function fromMatrix4(source:Matrix4):Matrix;
	// static function fromRaw(raw: Readonly<RawMatrix>): Matrix;
	function identity():Matrix;
	function inverse():Matrix;
	function inverseTransformPoint(point:Vector2):Vector2;
	function inverseTransformPointXY(x:Float, y:Float):Vector2;
	function inverseTransformVector(vector:Vector2):Vector2;
	function inverseTransformVectorXY(x:Float, y:Float):Vector2;
	function multiply(b:Matrix):Matrix;
	function rotate(theta:Float):Matrix;
	function scale(sx:Float, sy:Float):Matrix;
	function setGradientTransform(width:Float, height:Float, rotation:Float = 0, tx:Float = 0, ty:Float = 0):Void;
	function setTo(a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Void;
	function setTransform(scaleX:Float, scaleY:Float, rotation:Float = 0, tx:Float = 0, ty:Float = 0):Void;
	function transformPoint(point:Vector2):Vector2;
	function transformPointXY(x:Float, y:Float):Vector2;
	function transformRect(source:Rectangle):Rectangle;
	function transformRectVec2(a:Vector2, b:Vector2):Rectangle;
	function transformRectXY(ax:Float, ay:Float, bx:Float, by:Float):Rectangle;
	function transformVector(vector:Vector2):Vector2;
	function transformVectorXY(x:Float, y:Float):Vector2;
	function translate(dx:Float, dy:Float):Matrix;
	function writeToFloat32Array(out:Float32Array, offset:Float):Void;
}
