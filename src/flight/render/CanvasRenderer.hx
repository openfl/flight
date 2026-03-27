package flight.render;

import flight.display.DisplayObject;
import flight.sprite.SpriteNode;
import js.html.CanvasElement;

@:js.import("@flighthq/flight", "CanvasRenderer")
extern class CanvasRenderer
{
	function new(canvas:CanvasElement, ?options:CanvasRenderOptions);
	function render(source:Dynamic):Void;
	function renderDisplayObject(source:DisplayObject):Void;
	function renderSprite(source:SpriteNode):Void;
}
