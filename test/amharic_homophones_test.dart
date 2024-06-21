import 'package:amharic_homophones/amharic_homophones.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('ሀሴት is equal to ሐሤት', () {
    expect('ሀሴት'.am(), 'ሐሤት'.am());
  });
  test('ዑደት is equal to ኡደት', () {
    expect('ዑደት'.am(), 'ኡደት'.am());
  });

  test('ጸሎት is equal to ፀሎት', () {
    expect('ጸሎት'.am(), 'ፀሎት'.am());
  });
  test('ሴት is equal to ቤት', () {
    expect('ሴት'.am(), isNot('ቤት'.am()));
  });

  test('ሁለት ሰዓት is equal to ኁለት ሠአት', () {
    expect('ሁለት ሰዓት'.am(), 'ኁለት ሠኣት'.am());
  });
}
