import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/menu_option_model.dart';
import '../infrastructure/cache_service.dart';
import '../presentation/localization/localizations.dart';

part 'language_notifier.freezed.dart';

@freezed
class LanguageState with _$LanguageState {
  const LanguageState._();
  const factory LanguageState({
    @Default('en') String currentLanguage,
    required Locale locale,
  }) = _LanguageState;
}

const String selectedLanguageKey = 'SELECTED_LANGUAGE';
final List<MenuOptionsModel> languageOptions = [
  // MenuOptionsModel(key: "zh", value: "中文 (Chinese)"), //Chinese
  // MenuOptionsModel(key: "de", value: "Deutsche (German)"), //German
  MenuOptionsModel(key: "en", value: "English"), //English
  // MenuOptionsModel(key: "es", value: "Español (Spanish)"), //Spanish
  // MenuOptionsModel(key: "fr", value: "Français (French)"), //French
  // MenuOptionsModel(key: "hi", value: "हिन्दी (Hindi)"), //Hindi
  MenuOptionsModel(key: "ja", value: "日本語"), //Japanese
  // MenuOptionsModel(key: "pt", value: "Português (Portuguese)"), //Portuguese
  // MenuOptionsModel(key: "ru", value: "русский (Russian)"), //Russian
];

class LanguageNotifier extends StateNotifier<LanguageState> {
  LanguageNotifier() : super(LanguageState(locale: localizedLabels.keys.first));

  void updateLanguage(String selectedLanguage) {
    CacheService.put(selectedLanguageKey, selectedLanguage);
    for (final locale in localizedLabels.keys) {
      if (locale.languageCode == selectedLanguage) {
        state = state.copyWith(
          currentLanguage: selectedLanguage,
          locale: locale,
        );
      }
    }
  }
}
