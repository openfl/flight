package flight.assets;

@:js.import("@flighthq/flight", "TextureAtlasRegion")
extern class TextureAtlasRegion {
    var height:Float;
    var id(default, never):Int;
    var pivotX:Float;
    var pivotY:Float;
    var width:Float;
    var x:Float;
    var y:Float;
    function new(?x:Float, ?y:Float, ?width:Float, ?height:Float, ?pivotX:Float, ?pivotY:Float);
}
