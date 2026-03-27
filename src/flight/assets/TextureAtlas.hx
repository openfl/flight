package flight.assets;

@:js.import("@flighthq/flight", "TextureAtlas")
extern class TextureAtlas {
	public var image:Null<ImageSource>;
	public var numRegions:Int;
	function new(?image:ImageSource);
	function addRegion(region:TextureAtlasRegion):Void;
	function getRegion(index:Int):Null<TextureAtlasRegion>;
}
