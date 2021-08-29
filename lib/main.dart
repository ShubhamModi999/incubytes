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
    }else if (input.startsWith("//")) {
      String delimiter;

      int delimiterindex = input.indexOf("[") + 1;
      int enddeliindex = input.indexOf("]");
      delimiter = input.substring(delimiterindex, enddeliindex);

      String num1 = input.substring(input.indexOf(",") + 1);
      sum = c.add(delimiter, num1);
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
    List negative = [];
    for (var i = 0; i < arraynum.length; i = i + 1) {
      num2 = int.parse(arraynum[i]);
      if (num2 < 0) {
        negative.add(num2);
      }
      if (num2 <= 1000) {
        sumele = sumele + num2;
      }
    }

    try {
      if (negative.length > 0) {
        print("Negatives not allowed: ");
        print(negative);
      }
    } catch (e) {
      print(e);
    }
    return sumele;
  }
}
