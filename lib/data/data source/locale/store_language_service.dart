import 'package:starting_point/core/functions/init_get_it.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:starting_point/data/data%20source/locale/store_step_service.dart';

const String LANGUAGE_CODE = 'languageCode';
const String english = 'en';
const String arabic = 'ar';

class StoreLanguageService {
  SharedPreferences sharedPreferences =
      getIt.get<StoreStepService>().sharedPreferences;
  Future<Locale> setLocale(String languageCode) async {
    await sharedPreferences.setString(LANGUAGE_CODE, languageCode);
    return locale(languageCode);
  }

  Locale? getLocale() {
    String? languageCode = sharedPreferences.getString(LANGUAGE_CODE);
    if (languageCode != null) {
      return locale(languageCode);
    } else {
      return null;
    }
  }

  Locale locale(String languageCode) {
    switch (languageCode) {
      case english:
        return const Locale(english, '');
      case arabic:
        return const Locale(arabic, "");
      default:
        return const Locale(english, '');
    }
  }
}
