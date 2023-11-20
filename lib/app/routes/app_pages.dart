import 'package:get/get.dart';

import '../modules/academic/bindings/academic_binding.dart';
import '../modules/academic/views/academic_view.dart';
import '../modules/attendance/bindings/attendance_binding.dart';
import '../modules/attendance/views/attendance_view.dart';
import '../modules/home_screen/bindings/home_screen_binding.dart';
import '../modules/home_screen/views/home_screen_view.dart';
import '../modules/leave/bindings/leave_binding.dart';
import '../modules/leave/views/leave_view.dart';
import '../modules/library/bindings/library_binding.dart';
import '../modules/library/views/library_view.dart';
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
import '../modules/transport/bindings/transport_binding.dart';
import '../modules/transport/views/transport_view.dart';
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
    GetPage(
      name: _Paths.ACADEMIC,
      page: () => const AcademicView(),
      binding: AcademicBinding(),
    ),
    GetPage(
      name: _Paths.ATTENDANCE,
      page: () => const AttendanceView(),
      binding: AttendanceBinding(),
    ),
    GetPage(
      name: _Paths.TRANSPORT,
      page: () => const TransportView(),
      binding: TransportBinding(),
    ),
    GetPage(
      name: _Paths.LIBRARY,
      page: () => const LibraryView(),
      binding: LibraryBinding(),
    ),
    GetPage(
      name: _Paths.LEAVE,
      page: () => const LeaveView(),
      binding: LeaveBinding(),
    ),
  ];
}
