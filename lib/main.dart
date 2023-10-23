import 'package:starting_point/core/constant/app_theme.dart';
import 'package:starting_point/core/services/init%20services/init_services.dart';
import 'package:starting_point/debug/app_bloc_observer.dart';
import 'package:starting_point/generated/l10n.dart';
import 'package:starting_point/routs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await InitServices.init();
  runApp(const DollarApp());
}

class DollarApp extends StatelessWidget {
  const DollarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        for (var locale in supportedLocales) {
          if (deviceLocale != null &&
              deviceLocale.languageCode == locale.languageCode) {
            return deviceLocale;
          }
        }
        return supportedLocales.first;
      },
      theme: arabicTheme,
      debugShowCheckedModeBanner: false,
      getPages: routes,
    );
  }
}
