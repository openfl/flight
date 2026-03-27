package flight.display;

@:js.import("@flighthq/flight", "DisplayContainer")
extern class DisplayContainer extends DisplayObject
{
	var numChildren(default, never):UInt;
	function new();
	function addChild(child:DisplayObject):DisplayObject;
	function addChildAt(child:DisplayObject, index:UInt):DisplayObject;
	function removeChild(child:DisplayObject):DisplayObject;
	function removeChildAt(index:UInt):Null<DisplayObject>;
	function removeChildren(beginIndex:UInt = 0, ?endIndex:UInt):Void;
	function setChildIndex(child:DisplayObject, index:UInt):Void;
	function swapChildren(child1:DisplayObject, child2:DisplayObject):Void;
	function swapChildrenAt(index1:UInt, index2:UInt):Void;
}
