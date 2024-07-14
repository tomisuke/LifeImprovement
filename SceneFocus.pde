class SceneFocus {
  private ControlP5 Button;
  PVector baseHour, baseMin;
  int centerButtonW = 200, centerButtonH = 100;
  int centerButtonX = width/2 - (centerButtonW/2);
  SceneFocus() {
    baseHour = manageTime.getBaseHourPos();
    baseMin = manageTime.getBaseMinPos();
    Button = new ControlP5(self);
    Button.addButton("quit")
      .setLabel("やめる")
      .setPosition(centerButtonX, height/2)
      .setSize(centerButtonW, centerButtonH)
      .getCaptionLabel().setFont(font);
  }
  void draw() {
    background(255);
    manageTime.drawTime("残り時間");
    manageTime.countDown();
    if (manageTime.isFinish()) {
      scene = 2;
      hideAllButton();
      sceneEnd.Button.show();
    }
  }
}
