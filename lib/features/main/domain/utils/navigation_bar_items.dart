import 'package:flutter/material.dart';
import 'package:united_end2end/config/gen/assets.gen.dart';

enum NavigationBarItems {
  home(icon: Icons.home_outlined),
  profile(icon: Assets.imagesIcImageNotFound),
  ;

  const NavigationBarItems({required this.icon});
  final dynamic icon;

  String get label {
    return switch (this) {
      home => "Home",
      profile => "Profile",
    };
  }
}
