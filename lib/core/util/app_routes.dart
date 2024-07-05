import 'package:get/get.dart';
import 'package:login_demo/features/login/login_binding.dart';
import 'package:login_demo/features/splash/splash_page.dart';
import 'package:login_demo/features/splash/splash_page_binding.dart';
import '../../features/home/home_page.dart';
import '../../features/home/home_page_binding.dart';
import '../../features/login/login_page.dart';



class AppRoutes {
  AppRoutes._();

  static const splashPage = "/splashPage";

  ///Auth
  static const loginPage = "/loginPage";


  ///dashboard
  static const homePage = "/homePage";


  static final routes = [
    GetPage(
      name: splashPage,
      page: () => const SplashPage(),
      binding: SplashPageBinding(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 300),
    ),

    ///auth
    GetPage(
      name: loginPage,
      page: () => const LoginPage(),
      binding: LoginBinding(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 300),
    ),

    GetPage(
      name: homePage,
      page: () => const HomePage(),
      binding: HomeBinding(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 300),
    ),
  ];
}
