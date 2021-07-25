import '../localization/localizations.dart';

class Validator {
  AppLocalizationsData labels;
  Validator(this.labels);

  String? userName(String? value) {
    if (value == null || value.isEmpty) {
      return labels.validator.notEmpty;
    } else if (value.length < 3) {
      return labels.validator.shortUserName;
    } else {
      return null;
    }
  }

  String? password(String? value) {
    if (value == null || value.isEmpty) {
      return labels.validator.notEmpty;
    } else if (value.length < 3) {
      return labels.validator.shortPassword;
    } else {
      return null;
    }
  }
}
