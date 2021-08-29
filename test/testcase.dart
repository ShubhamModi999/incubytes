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
}