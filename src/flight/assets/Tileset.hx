package flight.assets;

@:js.import("@flighthq/flight", "Tileset")
extern class Tileset {
	var atlas:Null<TextureAtlas>;
	var columns:Int;
	var rows:Int;
	var tileHeight:Float;
	var tileWidth:Float;
	function new(?atlas:TextureAtlas, ?columns:Int, ?rows:Int, ?tileWidth:Float, ?tileHeight:Float);
}
