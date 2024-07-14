class ManageTime { //<>//
  private int hour = 0, min = 0, second = 0;
  private int finishMillis, finishMillisRemaining;
  private boolean flag;
  final private PVector baseHourPos, baseMinPos, baseSecondPos;
  ManageTime() {
    baseHourPos = new PVector(250, 250);
    baseMinPos = new PVector(500, 250);
    baseSecondPos = new PVector(750, 250);
  }

  void draw() {
    println(finishMillisRemaining, hour, min, second, 3/5);
  }
  void setBaseTime() {
    println(hour, min, second);
    finishMillis = millis() + (hour*3600*1000) + (min*60*1000) + (second*1000);
  }
  void setTime(int addHour, int addMin) {
    hour += addHour;
    min += addMin;
    if (min < 0) {
      if (hour >= 1) {
        hour--;
        min += 60;
      } else {
        min = 0;
      }
    }
    if (min >= 60) {
      hour++;
      min -= 60;
    }
    if (hour < 0) {
      hour = 0;
    }
  }
  void countDown() {
    finishMillisRemaining = finishMillis - millis();
    hour = finishMillisRemaining/(3600*1000);
    min = (finishMillisRemaining%(3600*1000))/(60*1000);
    second = ((finishMillisRemaining%(3600*1000))%(60*1000))/1000;
  }
  void drawTime(String label) {
    textSize(50);
    textAlign(LEFT, TOP);
    fill(0);
    text(label, 50, 100);
    text("時間", baseHourPos.x, baseHourPos.y);
    text("分", baseMinPos.x, baseMinPos.y);
    textAlign(RIGHT, TOP);
    textSize(80);
    text(hour, baseHourPos.x - 25, baseHourPos.y -15);
    text(min, baseMinPos.x - 25, baseMinPos.y -15);
    if (scene == 1) {
      textSize(60);
      text(second, baseSecondPos.x - 120, baseSecondPos.y - 5);
    }
  }
  void timeReset() {
    hour = 0;
    min = 0;
    second = 0;
  }
  boolean isFinish() {
    return (finishMillisRemaining < 1000);
  }
  PVector getBaseHourPos() {
    return baseHourPos;
  }
  PVector getBaseMinPos() {
    return baseMinPos;
  }
  int getHour() {
    return hour;
  }
  int getMin() {
    return min;
  }

  void timeCommand() {
    finishMillis = millis() + 5000;
  }
}
