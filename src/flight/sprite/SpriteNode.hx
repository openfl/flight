package flight.sprite;

import flight.materials.BlendMode;
import flight.materials.ColorTransform;
import flight.materials.Shader;

@:js.import("@flighthq/flight", "SpriteNode")
extern class SpriteNode {
	var alpha:Float;
	var alphaEnabled:Bool;
	var blendMode:Null<BlendMode>;
	var blendModeEnabled:Bool;
	var colorTransform:Null<ColorTransform>;
	var colorTransformEnabled:Bool;
	var height:Float;
	var name:Null<String>;
	var parent(default, never):Null<Sprite>;
	var rotation:Float;
	var scaleX:Float;
	var scaleY:Float;
	var shader:Null<Shader>;
	var visible:Bool;
	var width:Float;
	var x:Float;
	var y:Float;
}
