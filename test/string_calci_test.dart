

import 'package:flutter_test/flutter_test.dart';
import 'package:testdriven/StringCalci.dart';

void main (){
  final cal = Stringcalci();

  test('returns 0 for empty string', () {
    expect(cal.add(''), equals(0));
  });


}