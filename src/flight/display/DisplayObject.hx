package flight.display;

import flight.geom.Matrix;
import flight.geom.Rectangle;
import flight.geom.Vector2;
import flight.materials.BlendMode;
import flight.materials.Filter;
import flight.materials.Shader;

@:js.import("@flighthq/flight", "DisplayObject")
extern class DisplayObject {
	var alpha:Float;
	var blendMode:BlendMode;
	var cacheAsBitmap:Bool;
	var cacheAsBitmapMatrix:Null<Matrix>;
	var filters:Array<Filter>;
	var height:Float;
	var loaderInfo(default, never):Null<LoaderInfo>;
	var mask:Null<DisplayObject>;
	var name:Null<String>;
	var opaqueBackground:Null<UInt>;
	var parent(default, never):Null<DisplayObject>;
	var root(default, never):Null<DisplayObject>;
	var rotation:Float;
	var scale9Grid:Null<Rectangle>;
	var scaleX:Float;
	var scaleY:Float;
	var scrollRect:Null<Rectangle>;
	var shader:Null<Shader>;
	var stage(default, never):Null<Stage>;
	var transform:Transform;
	var visible:Bool;
	var width:Float;
	var x:Float;
	var y:Float;

	function new();
	function getBounds(targetCoordinateSpace:Null<DisplayObject>):Rectangle;
	function getRect(targetCoordinateSpace:Null<DisplayObject>):Rectangle;
	function globalToLocal(pos:Vector2):Vector2;
	function hitTestObject(other:DisplayObject):Bool;
	function hitTestPoint(x:Float, y:Float, _shapeFlag:Bool = false):Bool;
	function invalidate():Void;
	function localToGlobal(point:Vector2):Vector2;
}
