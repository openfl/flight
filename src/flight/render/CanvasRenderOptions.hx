package flight.render;

import flight.geom.Matrix;

// import js.html.CanvasRenderingContext2DSettings;
// import js.html.ImageSmoothingQuality;
typedef CanvasRenderOptions = {
	var ?backgroundColor:Null<UInt>;
	var ?contextAttributes:Dynamic /*CanvasRenderingContext2DSettings*/;
	var ?imageSmoothingEnabled:Bool;
	var ?imageSmoothingQuality:String /*ImageSmoothingQuality*/;
	var ?pixelRatio:Float;
	var ?renderTransform:Matrix;
	var ?roundPixels:Bool;
}
