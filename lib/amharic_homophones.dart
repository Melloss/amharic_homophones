library amharic_homophones;

import 'constants/homophone_characters_hex.dart';

export 'extension/am.dart';

/// A package for handling Amharic homophones.
///
/// This package provides a function to convert Amharic text with homophones to a normalized form.
/// It uses a predefined list of homophone characters and their corresponding normalized forms.
///
/// **Usage:**
///
/// ```dart
/// import 'package:amharic_homophones/amharic_homophones.dart';
///
/// void main() {
///   String textWithHomophones = "ሰላም አለም";
///   String normalizedText = AmharicHomophones.convertToNormalizedHomophone(textWithHomophones);
///   print(normalizedText); // Output: "ሰላም ዓለም"
/// }
/// ```
///
///
///

class AmharicHomophones {
  /// Converts Amharic text with homophones to a normalized form.
  ///
  /// This function iterates through each character in the input string and checks if it is a homophone.
  /// If it is, it replaces the character with its corresponding normalized form.
  ///
  /// **Parameters:**
  ///
  /// * `data`: The Amharic text with homophones.
  ///
  /// **Returns:**
  ///
  /// The normalized Amharic text.
  static String convertToNormalizedHomophone(String data) {
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
