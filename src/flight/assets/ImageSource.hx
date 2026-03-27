package flight.assets;

import js.html.ImageElement;

@:js.import("@flighthq/flight", "ImageSource")
extern class ImageSource {
	var height:Int;
	var width:Int;
	var src:ImageElement;
	function new(?src:ImageElement);
}
