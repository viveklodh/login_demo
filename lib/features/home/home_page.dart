import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_demo/features/home/home_page_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page"),),
      body: GetBuilder<HomePageController>(
          init: HomePageController(),
          builder: (controller) {
            return controller.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: controller.userModelList.length,
                    itemBuilder: (context, index) {
                      final user = controller.userModelList[index];
                      return ListTile(
                        title: Text(user.name),
                        subtitle: Text(user.email),
                      );
                    },
                  );
          }),
    );
  }
}
