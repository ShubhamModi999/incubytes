import 'package:flutter_test/flutter_test.dart';
import 'package:incubytes/main.dart';

void main() {
  test('String input ', () async {
    //Arrange
    final s = StringCalc("");
    //Act
    s.add();
    //Expect
    expect(s.sum, 0);
  });
  test('String input ', () async {
    //Arrange
    final s = StringCalc("4");
    //Act
    s.add();
    //Expect
    expect(s.sum, 0);
  });
  test('String input ', () async {
    //Arrange
    final s = StringCalc("4,1");
    //Act
    s.add();
    //Expect
    expect(s.sum, 0);
  });
  test('String input ', () async {
    //Arrange
    final s = StringCalc("4,3\n3");
    //Act
    s.add();
    //Expect
    expect(s.sum, 10);
  });
  test('String input ', () async{
    //Arrange
    final s = StringCalc("//[*]\n3*5*3");
    //Act
    s.add();
    //Expect
    expect(s.sum,11);

  });
  test('String input ', () async{
    //Arrange
    final s = StringCalc("//[%]\n3%5%3");
    //Act
    s.add();
    //Expect
    expect(s.sum,11);

  });

  test('String input ', () async{
    //Arrange
    final s = StringCalc("//[**]\n3**5**3");
    //Act
    s.add();
    //Expect
    expect(s.sum,11);

  });
  test('String input ', () async{
    //Arrange
    final s = StringCalc("//[**]\n8**-1**-2");
    //Act
    s.add();
    //Expect
    expect(s.sum,5);

  });
  test('String input ', () async{
    //Arrange
    final s = StringCalc("//[*]\n3*1001*3");
    //Act
    s.add();
    //Expect
    expect(s.sum,6);

  });

  test('String input ', () async{
    //Arrange
    final s = StringCalc("//[***]\n3***5***3");
    //Act
    s.add();
    //Expect
    expect(s.sum,11);

  });


}