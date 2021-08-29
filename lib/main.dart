class StringCalc {
  String _inputtemp;
  int sum;

  StringCalc(this._inputtemp);

  String get inputtemp => _inputtemp;

  void add() {
    String input = inputtemp.replaceAll("\n" , ",");
    Calc c = new Calc();
    if (inputtemp.isEmpty || inputtemp.length<4) {
      sum=0;
    }else if (input.contains(",")) {
      String deli = ",";
      sum=c.add(deli,input);

    }else{
      print("Invalid Input");
    }
  }
}

class Calc {
  int num2;
  int sumele = 0;

  int add(String delimiter, String number) {

    var arraynum = number.split(delimiter);
    for (var i = 0; i < arraynum.length; i = i + 1) {
      num2 = int.parse(arraynum[i]);
      sumele = sumele + num2;

    }


    return sumele;
  }
}
