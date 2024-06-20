import 'package:amharic_homophones/amharic_homophones.dart';

extension AmharicHomophoneCharacters on String {
  String am() {
    return AmharicHomophones.toAmharic(this);
  }
}
