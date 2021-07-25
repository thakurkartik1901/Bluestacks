import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_sheet_localization/flutter_sheet_localization.dart';

part 'localizations.g.dart';

//https://github.com/aloisdeniel/flutter_sheet_localization
//to rebuild language files
//delete the localizations.g.dart file
//on command line run...
//flutter packages pub run build_runner build

extension AppLocalizationsExtensions on BuildContext {
  AppLocalizationsData get localizations {
    return Localizations.of<AppLocalizationsData>(this, AppLocalizationsData)!;
  }
}

@SheetLocalization("1WTO-1pFPnTiKOOuNY4BZPzR-vJnnZuTMr__EZnhkufk", "0",
    6) // <- See 1. to get DOCID and SHEETID
class AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizationsData> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => localizedLabels.containsKey(locale);

  @override
  Future<AppLocalizationsData> load(Locale locale) =>
      SynchronousFuture<AppLocalizationsData>(localizedLabels[locale]!);
  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
