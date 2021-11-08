import 'package:dio/dio.dart';
import 'package:hellogetx/data/models/user_model.dart';

class UserProvider {
  Future<List<UserModel>> getAllUsers({required int page}) async {
    final dio = Dio();
    final response = await dio.get(
      'https://reqres.in/api/users',
      queryParameters: {
        "page": page,
      },
    );
    print(response.data);

    return (response.data["data"] as List)
        .map((item) => UserModel.fromJson(item))
        .toList();
  }
}
