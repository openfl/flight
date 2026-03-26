package flight.render;

import flight.display.DisplayObject;
import js.html.CanvasElement;

@:js.import("@flighthq/flight", "CanvasRenderer")
extern class CanvasRenderer {
    function new(canvas:CanvasElement, options:Dynamic);
    function render(source:DisplayObject):Void;
}