import 'package:amharic_homophones/amharic_homophones.dart';

/// Extension for String class to provide a method for converting Amharic text with homophones to a normalized form.
///
/// This extension adds the `am()` method to the String class, which uses the `convertToNormalizedHomophone` function from the `amharic_homophones` package to normalize the text.
///
/// **Usage:**
///
/// ```dart
/// import 'package:amharic_homophones/extension/am.dart';
///
/// void main() {
///   String textWithHomophones = "ሰላም አለም";
///   String normalizedText = textWithHomophones.am();
///   print(normalizedText); // Output: "ሰላም ዓለም"
/// }
/// ```
///
/// **Note:**
///
/// This extension requires the `amharic_homophones` package to be imported.
extension AmharicHomophoneCharacters on String {
  /// Converts Amharic text with homophones to a normalized form.
  ///
  /// **Returns:**
  ///
  /// The normalized Amharic text.
  String am() {
    return AmharicHomophones.convertToNormalizedHomophone(this);
  }
}
