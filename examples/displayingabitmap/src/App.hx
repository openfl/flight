package;

import flight.render.CanvasRenderer;
import js.html.CanvasElement;
import js.Browser;

class App {
    private var main: Main;
    private var renderer: CanvasRenderer;

    public function new() {
        var canvas = cast(Browser.document.createElement('canvas'), CanvasElement);
        canvas.width = 550;
        canvas.height = 400;
        Browser.document.body.appendChild(canvas);

        var options = {
            backgroundColor: 0xeeddccff,
            contextAttributes: {
                alpha: false,
            },
        };

        trace(StringTools.hex(options.backgroundColor, 8));

        renderer = new CanvasRenderer(canvas, options);
        main = new Main();
        enterFrame();
    }

    private function enterFrame(?_) {
        renderer.render(main);
        Browser.window.requestAnimationFrame(enterFrame);
    }
}
