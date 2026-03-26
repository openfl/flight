package flight.display;

import flight.assets.ImageSource;

@:js.import("@flighthq/flight", "Bitmap")
extern class Bitmap extends DisplayObject {
    var image:ImageSource;
    function new();
}