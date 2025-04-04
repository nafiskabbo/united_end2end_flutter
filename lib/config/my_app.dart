import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:united_end2end/config/routes/app_router.dart';
import 'package:united_end2end/config/themes/themes.dart';
import 'package:united_end2end/core/utils/view_utils.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final systemBarColors = SystemUiOverlayStyle(
      statusBarColor: context.primaryColor,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(systemBarColors);

    return MaterialApp.router(
      title: 'United End2End',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: Themes.light(),
      routerConfig: AppRouter.router,
    );
  }
}
