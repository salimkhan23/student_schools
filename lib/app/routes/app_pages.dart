import 'package:get/get.dart';

import '../modules/home_screen/bindings/home_screen_binding.dart';
import '../modules/home_screen/views/home_screen_view.dart';
import '../modules/login_screen/bindings/login_screen_binding.dart';
import '../modules/login_screen/views/login_screen_view.dart';
import '../modules/nav_screen/bindings/nav_screen_binding.dart';
import '../modules/nav_screen/views/nav_screen_view.dart';
import '../modules/notics/bindings/notics_binding.dart';
import '../modules/notics/views/notics_view.dart';
import '../modules/onboard_screen/bindings/onboard_screen_binding.dart';
import '../modules/onboard_screen/views/onboard_screen_view.dart';
import '../modules/profile_screen/bindings/profile_screen_binding.dart';
import '../modules/profile_screen/views/profile_screen_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/user_select_input/bindings/user_select_input_binding.dart';
import '../modules/user_select_input/views/user_select_input_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => const HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.NAV_SCREEN,
      page: () => const NavScreenView(),
      binding: NavScreenBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARD_SCREEN,
      page: () => const OnboardScreenView(),
      binding: OnboardScreenBinding(),
    ),
    GetPage(
      name: _Paths.USER_SELECT_INPUT,
      page: () => const UserSelectInputView(),
      binding: UserSelectInputBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => const LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SCREEN,
      page: () => const ProfileScreenView(),
      binding: ProfileScreenBinding(),
    ),
    GetPage(
      name: _Paths.NOTICS,
      page: () => const NoticsView(),
      binding: NoticsBinding(),
    ),
  ];
}
