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

  test('ሀ (U+1200) is equal to ሃ (U+1203)', () {
    expect('ሀ'.am(), 'ሃ'.am());
  });

  test('ሐ (U+1210) is equal to ሓ (U+1213)', () {
    expect('ሐ'.am(), 'ሓ'.am());
  });

  test('ኀ (U+1280) is equal to ኃ (U+1283)', () {
    expect('ኀ'.am(), 'ኃ'.am());
  });

  test('ሀሴት is equal to ሃሴት', () {
    expect('ሀሴት'.am(), 'ሃሴት'.am());
  });

  test('ሐሤት is equal to ሓሤት', () {
    expect('ሐሤት'.am(), 'ሓሤት'.am());
  });

  test('ኀይለኛ is equal to ኃይለኛ', () {
    expect('ኀይለኛ'.am(), 'ኃይለኛ'.am());
  });

  test('ኸሴት is NOT equal to ኻሴት (ኸ and ኻ are different)', () {
    expect('ኸሴት'.am(), isNot('ኻሴት'.am()));
  });
}
