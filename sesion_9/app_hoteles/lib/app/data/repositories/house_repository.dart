import 'package:app_hoteles/app/data/models/house_model.dart';
import 'package:app_hoteles/app/data/providers/house_provider.dart';
import 'package:get/get.dart';

class HouseRepository {
  final _houseProvider = Get.find<HouseProvider>();

  Future<List<HouseModel>> getHouses({
    required String token,
  }) =>
      _houseProvider.getHouses(token: token);
}
