package flight.geom;

@:js.import("@flighthq/flight", "Vector2")
extern class Vector2 {
    var x: Float;
    var y: Float;
    function new(?x:Float, ?y:Float);
}