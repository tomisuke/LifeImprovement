class SceneHome {
  private ControlP5 Button;
  final private int biginW = 200, biginH = 100;
  boolean isErrorMessage = false;
  SceneHome() {
    //初期値代入
    Button = new ControlP5(self);
    //ボタン
    Button.addButton("begin")
      .setLabel("開始")
      .setPosition(width/2-(biginW/2), height/2)
      .setSize(biginW, biginH)
      .getCaptionLabel().setFont(font);
    Button.addButton("addHour")
      .setLabel("")
      .setPosition(manageTime.getBaseHourPos().x - 90, manageTime.getBaseHourPos().y - 90)
      .setSize(50, 50);
    Button.addButton("subHour")
      .setLabel("")
      .setPosition(manageTime.getBaseHourPos().x - 90, manageTime.getBaseHourPos().y + 70)
      .setSize(50, 50);
    Button.addButton("addMin")
      .setLabel("")
      .setPosition(manageTime.getBaseMinPos().x - 90, manageTime.getBaseMinPos().y - 90)
      .setSize(50, 50);
    Button.addButton("subMin")
      .setLabel("")
      .setPosition(manageTime.getBaseMinPos().x - 90, manageTime.getBaseMinPos().y + 70)
      .setSize(50, 50);
  }
  void draw() {
    textSize(50);
    background(255);
    manageTime.drawTime("フォーカス時間の長さ");
    if (isErrorMessage) {
      errorMessage();
    }
  }
  void errorMessage() {
    textSize(30);
    fill(255,0,0);
    textAlign(LEFT,TOP);
    text("時間を設定してください", 240, height/3+160);
  }
  void setErrorMessage(boolean isErrorMessage) {
    this.isErrorMessage = isErrorMessage;
  }
}
