package flight.assets;

@:js.import("@flighthq/flight", "TextureAtlas")
extern class TextureAtlas {
    public var image:ImageSource;
    public var regions:Array<TextureAtlasRegion>;
    function new(image:ImageSource);
    function addRegion(region:TextureAtlasRegion):Void;
}