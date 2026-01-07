

import 'package:flutter_test/flutter_test.dart';
import 'package:testdriven/StringCalci.dart';

void main (){
  final cal = Stringcalci();

  test('returns 0 for empty string', () {
    expect(cal.add(''), equals(0));
  });

  test('returns number itself for single number', () {
    expect(cal.add('1'), equals(1));
  });

  test('returns sum of two comma separated numbers', () {
    expect(cal.add('1,5'), equals(6));
  });


  test('throws exception for negative numbers', () {
    expect(
          () => cal.add('1,-2,-3'),
      throwsA(
        predicate(
              (e) =>
          e is Exception &&
              e.toString().contains('-2') &&
              e.toString().contains('-3'),
        ),
      ),
    );
  });

}