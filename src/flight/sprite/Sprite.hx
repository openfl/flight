package flight.sprite;

@:js.import("@flighthq/flight", "Sprite")
extern class Sprite extends SpriteNode {
	var id:UInt;
	var numChildren(default, never):UInt;
	function new();
	function addChild(child:SpriteNode):SpriteNode;
	function addChildAt(child:SpriteNode, index:UInt):SpriteNode;
	// static function fromRaw(raw: RawSprite): Sprite;
	function removeChild(child:SpriteNode):SpriteNode;
	function removeChildAt(index:UInt):Null<SpriteNode>;
	function removeChildren(beginIndex:UInt = 0, ?endIndex:UInt):Void;
	function setChildIndex(child:SpriteNode, index:UInt):Void;
	function swapChildren(child1:SpriteNode, child2:SpriteNode):Void;
	function swapChildrenAt(index1:UInt, index2:UInt):Void;
}
