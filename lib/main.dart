import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hub/core/services/get_it_services.dart';
import 'package:fruit_hub/core/theme/color_palette.dart';
import 'core/routs/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/services/custom_bloc_observer.dart';
import 'core/services/shared_preferences.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'generated/l10n.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHelper.instance.init();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = CustomBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupGetIt();
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            navigatorKey: navigatorKey,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'cairo',
              scaffoldBackgroundColor: AppColors.whiteColor,
              primaryColor: ColorScheme.fromSeed(seedColor: AppColors.greenColor).primary,
            ),
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: const Locale('ar'),
            onGenerateRoute: AppRouter.onGenerateRoute,
          );
        });
  }
}
