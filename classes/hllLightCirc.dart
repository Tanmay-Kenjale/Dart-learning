class HllLigtCirc {
  int _switch1State;
  int _switch2State;
  int _lampState;

  HllLigtCirc(int switch1State, int switch2State, int lampState) {
    if ((switch1State == 0 || switch1State == 1) &&
        (switch2State == 0 || switch2State == 1) &&
        (lampState == 0 || lampState == 1)) {
    } else {
      print("All parameters should be only 0 or 1");
    }
    this._switch1State = switch1State;
    this._switch2State = switch2State;
    this._lampState = lampState;
  }

  int getFirstSwitchState() {
    return this._switch1State;
  }

  int getSecondSwitchState() {
    return this._switch2State;
  }

  int getLampState() {
    return this._lampState;
  }

  void toggleFirstSwitch() {
    if (this._switch1State == 0) {
      this._switch1State = 1;
    } else {
      this._switch1State = 0;
    }
  }

  void toggleSecondSwitch() {
    if (this._switch2State == 0) {
      this._switch2State = 1;
    } else {
      this._switch2State = 0;
    }
  }
}