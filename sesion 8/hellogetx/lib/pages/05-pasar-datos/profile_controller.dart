import 'package:get/get.dart';
import 'package:hellogetx/data/models/user_model.dart';

class ProfileController extends GetxController {
  UserModel user = UserModel();

  @override
  void onInit() {
    user = Get.arguments as UserModel;

    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
