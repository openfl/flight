import flight.scene.graph.display.MovieClip;
// import flight.scene.graph.display.Bitmap;
// import flight.assets.ImageSource;

class Main extends MovieClip {
  // private var bitmap: Bitmap = new Bitmap();

  public function new() {
    super();
    trace("Hello World");
    // this.initialize();
  }

  // private async initialize() {
  //   try {
  //     this.bitmap.image = new ImageSource(await loadImageAndDecode('assets/wabbit_alpha.png'));
  //     this.bitmap.x = (550 - this.bitmap.width) / 2;
  //     this.bitmap.y = (400 - this.bitmap.height) / 2;
  //     this.addChild(this.bitmap);
  //   } catch (error) {
  //     console.error('Error loading image:', error); // eslint-disable-line
  //   }
  // }
}

// function loadImageAndDecode(src: string): Promise<HTMLImageElement> {
//   return new Promise((resolve, reject) => {
//     const img = new Image();
//     img.onload = () => resolve(img);
//     img.onerror = () => reject(new Error('Failed to load image'));
//     img.src = src;
//   });
// }
