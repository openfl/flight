package flight.assets;

@:js.import("@flighthq/flight", "TextureAtlasRegion")
extern class TextureAtlasRegion {
    var x:Float;
    var y:Float;
    var width:Float;
    var height:Float;
    function new(?x:Float, ?y:Float, ?width:Float, ?height:Float);
}