class StringCalc {
  String _inputtemp;
  int sum;

  StringCalc(this._inputtemp);

  String get inputtemp => _inputtemp;

  void add() {
    if (inputtemp.isEmpty || inputtemp.length<4) {
      sum=0;
    }
  }
}