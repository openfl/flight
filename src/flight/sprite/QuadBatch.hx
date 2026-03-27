package flight.sprite;

import flight.assets.TextureAtlas;
import flight.geom.Matrix;
import flight.geom.Vector2;
import js.lib.Float32Array;
import js.lib.Uint16Array;

@:js.import("@flighthq/flight", "QuadBatch")
extern class QuadBatch extends SpriteNode {
	var atlas:TextureAtlas;
	var ids:Uint16Array;
	var instanceCount:UInt;
	var transforms:Float32Array;
	var transformType:QuadTransformType;
	function new();
	function readID(index:UInt):UInt;
	function readMatrix(index:UInt):Matrix;
	function readVector2(index:UInt):Vector2;
	function reserve(capacity:UInt):Void;
	function resize(instanceCount:UInt):Void;
	function writeID(index:UInt, id:UInt):Void;
	function writeIDs(startIndex:UInt, values:Uint16Array):Void;
	function writeMatrices(startIndex:UInt, values:Float32Array):Void;
	function writeMatrix(index:UInt, matrix:Matrix):Void;
	function writeVector(index:UInt, vector:Vector2):Void;
	function writeVectors(startIndex:UInt, values:Float32Array):Void;
}
