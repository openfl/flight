package;

import flight.assets.ImageSource;
import flight.assets.TextureAtlas;
import flight.assets.TextureAtlasRegion;
import flight.geom.Rectangle;
import flight.geom.Vector2;
import flight.render.CanvasRenderer;
import flight.sprite.QuadBatch;
import js.html.CanvasElement;
import js.html.DivElement;
import js.html.Image;
import js.lib.Error;
import js.lib.Promise;
import js.Browser;

class App {
  var canvas:CanvasElement;
  var element:DivElement;
  var quadBatch:QuadBatch;
  var renderer:CanvasRenderer;
//   var stats:Stats;

  var addingBunnies:Bool = false;
  var bunnyPosition:Array<Vector2> = [];
  var bunnySpeed:Array<Vector2> = [];
  var gravity:Float = 0.5;
  var minX:Float;
  var minY:Float;
  var maxX:Float;
  var maxY:Float;

  public function new() {
    loadImageAndDecode('assets/wabbit_alpha.png').then((image:Image) -> {
        initialize(new ImageSource(image));
    });
  }

  private function initialize(bunny:ImageSource):Void {
    initElements();
    // initStats();
    initQuadBatch(bunny);
    initRenderer();

    minX = 0;
    minY = 0;
    maxX = canvas.width;
    maxY = canvas.height;

    start();
  }

  private function addBunny():Void {
    quadBatch.resize(quadBatch.instanceCount + 1);
    bunnyPosition.push(new Vector2());
    bunnySpeed.push(new Vector2(Math.random() * 5, Math.random() * 5 - 2.5));
  }

  private function enterFrame(?_):Void {
    // stats.begin();
    var instanceCount = quadBatch.instanceCount;

    for (i in 0...instanceCount) {
      var position = bunnyPosition[i];
      var speed = bunnySpeed[i];
      position.x += speed.x;
      position.y += speed.y;
      speed.y += gravity;

      if (position.x > maxX) {
        speed.x *= -1;
        position.x = maxX;
      } else if (position.x < minX) {
        speed.x *= -1;
        position.x = minX;
      }

      if (position.y > maxY) {
        speed.y *= -0.8;
        position.y = maxY;
        if (Math.random() > 0.5) {
          speed.y -= 3 + Math.random() * 4;
        }
      } else if (position.y < minY) {
        speed.y = 0;
        position.y = minY;
      }

      quadBatch.writeVector(i, position);
    }

    if (addingBunnies) {
      for (i in 0...100) {
        addBunny();
      }
    }

    renderer.renderSprite(quadBatch);
    // stats.end();
    Browser.window.requestAnimationFrame(enterFrame);
  };

  private function initElements():Void {
    element = cast(Browser.document.createElement('div'), DivElement);
    canvas = cast(Browser.document.createElement('canvas'), CanvasElement);

    canvas.width = 550;
    canvas.height = 400;
    element.appendChild(canvas);
    element.addEventListener('mousedown', onMouseDown);
    element.addEventListener('mouseup', onMouseUp);
    Browser.document.body.appendChild(element);
  }

  private function initQuadBatch(bunny:ImageSource):Void {
    var atlas = new TextureAtlas(bunny);
    atlas.addRegion(new TextureAtlasRegion(0, 0, bunny.width, bunny.height));
    quadBatch = new QuadBatch();
    quadBatch.atlas = atlas;
    quadBatch.transformType = 'vector2';
  }

  private function initRenderer():Void {
    var options = {
      backgroundColor: 0xeeddccff,
      contextAttributes: {
        alpha: false,
      },
    };

    renderer = new CanvasRenderer(canvas, options);
  }

//   private function initStats():Void {
//     stats = new Stats();
//     var dom = stats.dom;
//     dom.style.position = 'absolute';
//     dom.style.left = '0px';
//     dom.style.top = '0px';
//     Browser.document.body.appendChild(dom);
//   }

  private function loadImageAndDecode(src: String): Promise<Image> {
    return new Promise((resolve, reject) -> {
      var img = new Image();
      img.onload = () -> resolve(img);
      img.onerror = () -> reject(new Error('Failed to load image'));
      img.src = src;
    });
  }

  private function onMouseDown():Void {
    addingBunnies = true;
  }

  private function onMouseUp():Void {
    addingBunnies = false;
    trace(this.bunnyPosition.length + ' bunnies');
  }

  private function start():Void {
    for (i in 0...10) {
      addBunny();
    }

    enterFrame();
  }
}
