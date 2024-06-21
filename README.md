
`amharic_homophones` package provides a function to convert Amharic text with homophones to a normalized form.
It uses a predefined list of homophone characters and their corresponding normalized forms.

## Features

* **Homophone Normalization:** Converts Amharic text with homophones to a consistent and normalized form.

## Getting started

you can add the package using the following command

```
flutter pub add amharic_homophones
```
or

```
dart pub add amharic_homophones
```


```dart
import 'package:amharic_homophones/amharic_homophones.dart';

void main() {
  String textWithHomophones = "ሐሤት";
  String normalizedText = textWithHomophones.am();
  print(normalizedText); // Output: "ሀሴት"
}
```
## Contributions

Contributions to the amharic_homophones are welcomed, If you find any issues or have suggestions for improvements, please open an issue or submit a pull request on the GitHub repository.
