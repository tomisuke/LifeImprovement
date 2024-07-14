//ボタン
void begin() {
  if (manageTime.getMin() == 0 && manageTime.getHour() == 0) {
    sceneHome.setErrorMessage(true);
  } else {
    scene = 1;
    sceneHome.Button.hide();
    sceneFocus.Button.show();
    manageTime.setBaseTime();
    sceneHome.setErrorMessage(false);
  }
}
void addHour() {
  manageTime.setTime(1, 0);
}
void subHour() {
  manageTime.setTime(-1, 0);
}
void addMin() {
  manageTime.setTime(0, 10);
}
void subMin() {
  manageTime.setTime(0, -10);
}
void quit() {
  scene = 0;
  hideAllButton();
  manageTime.timeReset();
  sceneHome.Button.show();
}
void backHome() {
  scene = 0;
  hideAllButton();
  manageTime.timeReset();
  sceneHome.Button.show();
}
void keyPressed() {
  manageTime.timeCommand();
}

void hideAllButton() {
  sceneHome.Button.hide();
  sceneFocus.Button.hide();
  sceneEnd.Button.hide();
}
