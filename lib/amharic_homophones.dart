library amharic_homophones;

import 'constants/homophone_characters_hex.dart';

export 'extension/am.dart';

class AmharicHomophones {
  static String toAmharic(String data) {
    final temp = StringBuffer();

    for (int i = 0; i < data.length; i++) {
      String letterHex = data[i].runes.first.toRadixString(16).padLeft(4, '0');

      if (homophoneLettersHex.contains(letterHex)) {
        final letterPosition = homophoneLettersHex.indexOf(letterHex) % 7;
        if (letterHex.startsWith('121') ||
            letterHex.startsWith('128') ||
            letterHex.startsWith('12b')) {
          int tempHex = int.parse('1200', radix: 16) +
              int.parse('$letterPosition', radix: 16);

          temp.write(String.fromCharCode(tempHex));
        } else if (letterHex.startsWith('122')) {
          int tempHex = int.parse('1230', radix: 16) +
              int.parse('$letterPosition', radix: 16);

          temp.write(String.fromCharCode(tempHex));
        } else if (letterHex.startsWith('12d')) {
          int tempHex = int.parse('12A0', radix: 16) +
              int.parse('$letterPosition', radix: 16);

          temp.write(String.fromCharCode(tempHex));
        } else if (letterHex.startsWith('133')) {
          int tempHex = int.parse('1340', radix: 16) +
              int.parse('$letterPosition', radix: 16);

          temp.write(String.fromCharCode(tempHex));
        } else {
          temp.write(data[i]);
        }
      } else {
        temp.write(data[i]);
      }
    }
    return temp.toString();
  }
}
