import 'package:flutter/material.dart';
import 'package:flutter_localization/user_preferences.dart';

class LocaleProvider extends ChangeNotifier{
  String? _locale;
  setLocale(languageCode){
    UserPreferences.set("localeCode", languageCode);
    _locale=languageCode;
    notifyListeners();
  }

  String? get getLocale=>_locale=UserPreferences.get("localeCode");

}