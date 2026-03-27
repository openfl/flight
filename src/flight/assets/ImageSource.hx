package flight.assets;

@:js.import("@flighthq/flight", "ImageSource")
extern class ImageSource {
    var height:Int;
    var width:Int;
    function new(?src: js.html.Image);
}