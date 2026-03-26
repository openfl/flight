import flight.assets.ImageSource;
import flight.display.Bitmap;
import flight.display.MovieClip;
import js.html.Image;
import js.lib.Error;
import js.lib.Promise;

class Main extends MovieClip {
  private var bitmap:Bitmap;

  public function new() {
    super();
    loadImageAndDecode('assets/wabbit_alpha.png').then(initialize);
  }

  private function initialize(img: Image) {
    bitmap = new Bitmap();
    bitmap.image = new ImageSource(img);
    bitmap.x = (550 - bitmap.width) / 2;
    bitmap.y = (400 - bitmap.height) / 2;
    addChild(this.bitmap);
  }

  private function loadImageAndDecode(src: String): Promise<Image> {
    return new Promise((resolve, reject) -> {
      var img = new Image();
      img.onload = () -> resolve(img);
      img.onerror = () -> reject(new Error('Failed to load image'));
      img.src = src;
    });
  }
}
