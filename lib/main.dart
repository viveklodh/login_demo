import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:login_demo/core/util/app_colors.dart';
import 'package:login_demo/core/util/app_routes.dart';
import 'features/splash/splash_page.dart';
import 'features/splash/splash_page_binding.dart';



 main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'My App',
          theme: ThemeData(
            primaryColor: AppColors.primary,
          ),
          home: const SplashPage(),
          initialBinding: SplashPageBinding(),
          getPages: AppRoutes.routes,
    );
  }
}
