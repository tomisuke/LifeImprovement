//変更しました
import controlP5.*;
PFont font;
PFont font30;
PApplet self = this;
//クラス呼び出し
SceneHome sceneHome;
SceneFocus sceneFocus;
SceneWarning sceneWarning;
SceneEnd sceneEnd;
SceneSetRest sceneSetRest;
SceneRest sceneRest;
SceneSetting sceneSetting;
SceneIsExit sceneIsExit;
ManageTime manageTime;
//グローバル変数
int scene = 0;
void setup() {
  size(800, 1200);
  //クラス初期化
  font = createFont("MS-Gothic-48.vlw", 50);
  font30 = createFont("MS-Gothic-48.vlw", 30);
  textFont(font);
  manageTime = new ManageTime();
  sceneHome = new SceneHome();
  sceneFocus = new SceneFocus();
  sceneWarning = new SceneWarning();
  sceneEnd = new SceneEnd();
  sceneSetRest = new SceneSetRest();
  sceneRest = new SceneRest();
  sceneSetting = new SceneSetting();
  sceneIsExit = new SceneIsExit();
  hideAllButton();
  sceneHome.Button.show();
}
void draw() {
  manageTime.draw();
  switch(scene) {
  case 0 :
    sceneHome.draw();
    break;	
  case 1 :
    sceneFocus.draw();
    break;
  case 2 :
    sceneEnd.draw();
  }
}
