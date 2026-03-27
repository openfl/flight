package flight.geom;

import js.lib.Float32Array;

@:js.import("@flighthq/flight", "Vector2")
extern class Vector2 {
	var length:Float;
	var lengthSquared:Float;
	var x:Float;
	var y:Float;
	function new(?x:Float, ?y:Float);
	function add(source:Vector2):Vector2;
	function clone():Vector2;
	function copyFrom(source:Vector2):Void;
	static function createPolar(len:Float, angle:Float):Vector2;
	static function distance(a:Vector2, b:Vector2):Float;
	function equals(b:Null<Vector2>):Bool;
	static function fromFloat32Array(source:Float32Array, offset:UInt):Vector2;
	// static function fromRaw(raw: Readonly<RawVector2>): Vector2;
	static function lerp(a:Vector2, b:Vector2, t:Float):Vector2;
	function normalize(length:Float):Void;
	function offset(dx:Float, dy:Float):Void;
	function setTo(x:Float, y:Float):Void;
	function subtract(source:Vector2):Vector2;
	function writeToFloat32Array(out:Float32Array, offset:UInt):Void;
}
