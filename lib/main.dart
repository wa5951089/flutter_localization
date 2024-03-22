import 'package:flutter/material.dart';
import 'package:flutter_localization/providers/locale_provider.dart';
import 'package:flutter_localization/user_preferences.dart';
import 'package:flutter_localization/utill/manage_routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> LocaleProvider(),
      child: Consumer<LocaleProvider>(builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          /*routes: {
          "/": (context) => ScreenOne(),
          "/ScreenTwo": (context) => ScreenTwo(),
          "/ScreenThree": (context) => ScreenThree(),
          "/ScreenFour": (context) => ScreenFour(),
          "/ScreenFive": (context) => ScreenFive(),
        },*/
          initialRoute: "/",
          onGenerateRoute: MyRoutes.onGenerateRoutes,
          locale: Locale(value.getLocale??"en"),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
        );
      },)
    );
  }
}
