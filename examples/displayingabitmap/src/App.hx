package;

import flight.render.CanvasRenderer;
import js.html.CanvasElement;
import js.Browser;

class App {
    private var main: Main;
    private var renderer: CanvasRenderer;

    public function new() {
        // TODO: Move to ApplicationMain?
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

        renderer = new CanvasRenderer(canvas, options);
        main = new Main();
        enterFrame();
    }

    private function enterFrame(?_) {
        renderer.render(main);
        Browser.window.requestAnimationFrame(enterFrame);
    }
}
