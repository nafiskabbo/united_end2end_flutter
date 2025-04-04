import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:united_end2end/config/gen/assets.gen.dart';
import 'package:united_end2end/config/routes/routes.dart';
import 'package:united_end2end/config/themes/decoration_styles.dart';
import 'package:united_end2end/config/themes/styles.dart';
import 'package:united_end2end/core/di/app_injections.dart';
import 'package:united_end2end/core/services/shared_prefs_helper.dart';
import 'package:flutter/material.dart';
import 'package:united_end2end/core/utils/view_utils.dart';
import 'package:united_end2end/core/widgets/image_view.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      checkAndNavigate();
    });
  }

  Future<void> checkAndNavigate() async {
    await initInjections();
    navigateUser();
  }

  void navigateUser() {
    final route =
        getIt<SharedPrefsHelper>().sessionToken.isNotEmpty ? Routes.home : Routes.createAccount;

    Future.delayed(const Duration(milliseconds: 400), () {
      if (mounted) context.goNamed(route.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    final systemBarColors = DecorationStyles.appBarSystemUiOverlayStyle(context: context);
    SystemChrome.setSystemUIOverlayStyle(systemBarColors);

    return Scaffold(
      backgroundColor: context.primaryColor,
      body: ImageView(
        imagePath: Assets.imagesIcImageNotFound,
        color: context.onSurfaceColor,
        height: 64,
        width: 64,
      ).center().withPadding(px32),
    );
  }
}
