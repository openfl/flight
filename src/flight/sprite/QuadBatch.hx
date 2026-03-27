package flight.sprite;

import flight.assets.TextureAtlas;
import flight.geom.Vector2;

@:js.import("@flighthq/flight", "QuadBatch")
extern class QuadBatch extends SpriteNode {
    public var atlas:TextureAtlas;
    public var instanceCount:Int;
    public var transformType:String;
    function new();
    public function resize(capacity:Int):Void;
    public function writeVector(index:Int, vector:Vector2):Void;
}