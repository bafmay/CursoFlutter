import 'package:app_hoteles/app/data/models/user_model.dart';
import 'package:app_hoteles/app/data/providers/user_provider.dart';
import 'package:get/get.dart';

class UserRepository {
  final _userProvider = Get.find<UserProvider>();

  Future<String> insertUser({required UserModel userModel}) =>
      _userProvider.insertUser(userModel: userModel);

  Future<UserModel> getInformation(
          {required String token, required int idUser}) =>
      _userProvider.getInformation(token: token, userId: idUser);
}
