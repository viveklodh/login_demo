import 'dart:convert';

import 'package:get/get.dart';
import 'package:login_demo/core/util/services/common_methods.dart';
import 'model/user_model.dart';
import 'package:http/http.dart' as http;



class HomePageController extends GetxController {

  RxBool isLoading = false.obs;

  RxList<UserModel> userModelList = <UserModel>[].obs;



  @override
  onInit() async {
    super.onInit();
    consoleLog("HomePage : call onInit");
    await fetchUsers();
  }


  Future<void> fetchUsers() async {
    isLoading.value = true;

    final response = await http.get(Uri.parse('https://fake-json-api.mock.beeceptor.com/users'));

    if (response.statusCode == 200) {

      var data = json.decode(response.body) as List;
      userModelList.value = data.map((user) => UserModel.fromJson(user)).toList();
      isLoading.value = false;
      update();

    } else {
      isLoading.value = false;
      update();
      throw Exception('Failed to load users');
    }
    isLoading.value = false;
    update();
  }


}