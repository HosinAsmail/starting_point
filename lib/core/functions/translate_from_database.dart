import 'package:starting_point/data/data%20source/locale/store_language_service.dart';
import 'package:flutter/material.dart';

String translateFromDatabase(String arabicWord, String englishWord) {
  if (StoreLanguageService().getLocale() == const Locale('en')) {
    // just for testing
    return arabicWord;
  } else {
    return arabicWord;
  }
}
