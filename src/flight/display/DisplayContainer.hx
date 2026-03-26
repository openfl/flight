package flight.display;

@:js.import("@flighthq/flight", "DisplayContainer")
extern class DisplayContainer extends DisplayObject {
    function new();
    function addChild(child: DisplayObject): DisplayObject;
}
