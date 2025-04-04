import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:united_end2end/config/routes/routes.dart';
import 'package:united_end2end/features/auth/presentation/pages/create_account_screen.dart';
import 'package:united_end2end/features/auth/presentation/pages/otp_screen.dart';
import 'package:united_end2end/features/dashboard/presentation/home/pages/home_screen.dart';
import 'package:united_end2end/features/profile/presentation/pages/edit_profile/edit_profile_screen.dart';
import 'package:united_end2end/features/profile/presentation/pages/profile/profile_screen.dart';
import 'package:united_end2end/features/main/presentation/pages/main_screen.dart';
import 'package:united_end2end/features/main/presentation/pages/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:united_end2end/features/settings/pages/webview/webview_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final AppRouter _instance = AppRouter._internal();
  static AppRouter get instance => _instance;
  factory AppRouter() {
    return _instance;
  }

  static late final GoRouter router;

  BuildContext get context => router.routerDelegate.navigatorKey.currentContext!;

  GoRouterDelegate get routerDelegate => router.routerDelegate;

  GoRouteInformationParser get routeInformationParser => router.routeInformationParser;

  static final parentNavigatorKey = GlobalKey<NavigatorState>();
  static final homeTabNavigatorKey = GlobalKey<NavigatorState>();
  static final profileTabNavigatorKey = GlobalKey<NavigatorState>();

  AppRouter._internal();

  static Future<void> init() async {
    final routes = [
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: parentNavigatorKey,
        branches: [
          StatefulShellBranch(
            navigatorKey: homeTabNavigatorKey,
            routes: [
              getGoRouteInstance(route: Routes.home, child: const HomeScreen()),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: profileTabNavigatorKey,
            routes: [
              getGoRouteInstance(
                route: Routes.profile,
                child: const ProfileScreen(),
                routes: [
                  getGoRouteInstance(
                    route: Routes.editProfile,
                    pageBuilder: (context, state) => getPage(
                      state: state,
                      child: const EditProfileScreen(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
        pageBuilder: (context, state, navigationShell) =>
            getPage(state: state, child: MainScreen(child: navigationShell)),
      ),

      getGoRouteInstance(
        parentNavigatorKey: parentNavigatorKey,
        route: Routes.splash,
        child: const SplashScreen(),
      ),

      // Login
      getGoRouteInstance(
        parentNavigatorKey: parentNavigatorKey,
        route: Routes.createAccount,
        child: const CreateAccountScreen(),
      ),
      getGoRouteInstance(
        parentNavigatorKey: parentNavigatorKey,
        route: Routes.otp,
        pageBuilder: (context, state) => getPage(
          state: state,
          child: OtpScreen(pathParams: state.pathParameters),
        ),
      ),

      // Others
      getGoRouteInstance(
        parentNavigatorKey: parentNavigatorKey,
        route: Routes.webview,
        pageBuilder: (context, state) {
          return getPage(
            state: state,
            child: WebviewScreen(queryParams: state.uri.queryParameters),
          );
        },
      ),
    ];
    router = GoRouter(
      navigatorKey: parentNavigatorKey,
      debugLogDiagnostics: true,
      initialLocation: Routes.splash.path,
      routes: routes,
    );
  }

  static GoRoute getGoRouteInstance({
    GlobalKey<NavigatorState>? parentNavigatorKey,
    required Routes route,
    Page<dynamic> Function(BuildContext, GoRouterState)? pageBuilder,
    Widget? child,
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    assert(pageBuilder != null || child != null, 'pageBuilder, or child must be provided');
    return GoRoute(
      parentNavigatorKey: parentNavigatorKey,
      name: route.name,
      path: route.path,
      pageBuilder: pageBuilder ?? (context, state) => getPage(state: state, child: child!),
      routes: routes,
    );
  }

  static Page getPage({required Widget child, required GoRouterState state}) => Platform.isIOS
      ? CupertinoPage(key: state.pageKey, child: child)
      : MaterialPage(key: state.pageKey, child: child);
}

/// A page that fades in an out.
class FadeTransitionPage extends CustomTransitionPage<void> {
  /// Creates a [FadeTransitionPage].
  FadeTransitionPage({
    required LocalKey super.key,
    required super.child,
  }) : super(
            transitionsBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation, Widget child) =>
                FadeTransition(
                  opacity: animation.drive(_curveTween),
                  child: child,
                ));

  static final CurveTween _curveTween = CurveTween(curve: Curves.easeIn);
}
