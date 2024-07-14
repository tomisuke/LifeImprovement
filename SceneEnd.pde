class SceneEnd {
  private ControlP5 Button;
  int centerButtonW = 200, centerButtonH = 100;
  int centerButtonX = width/2 - (centerButtonW/2);
  SceneEnd() {
    Button = new ControlP5(self);
    Button.addButton("backHome")
      .setLabel("ホームへ戻る")
      .setPosition(centerButtonX, height/2)
      .setSize(centerButtonW, centerButtonH)
      .getCaptionLabel().setFont(font30);
  }
  void draw() {
    background(255);
  }
}
