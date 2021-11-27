import 'package:app_hoteles/app/core/config/config.dart';
import 'package:app_hoteles/app/data/models/house_model.dart';
import 'package:dio/dio.dart';

class HouseProvider {
  Future<List<HouseModel>> getHouses({
    required String token,
  }) async {
    final _dio = Dio();
    final _response = await _dio.get(
      "$baseUrl/api/house/houses/1/6",
      options: Options(
        headers: {"auth": token},
      ),
    );
    return (_response.data["result"] as List)
        .map((json) => HouseModel.fromJson(json))
        .toList();
  }
}
