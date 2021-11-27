import 'package:app_hoteles/app/data/models/house_model.dart';
import 'package:app_hoteles/app/data/models/request_token.dart';
import 'package:app_hoteles/app/data/models/user_model.dart';
import 'package:app_hoteles/app/data/repositories/house_repository.dart';
import 'package:app_hoteles/app/data/repositories/local/storage_repository.dart';
import 'package:app_hoteles/app/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _storageRepository = Get.find<StorageRepository>();
  final _userRepository = Get.find<UserRepository>();
  final _houseRepository = Get.find<HouseRepository>();
  RequestToken _requestToken = RequestToken();

  RxString name = RxString("");
  RxString address = RxString("");
  final _isSelectedIndex = RxInt(0);
  RxInt get isSelectedIndex => _isSelectedIndex;
  UserModel userModel = UserModel();
  RxList<HouseModel> houses = RxList<HouseModel>([]);

  @override
  void onInit() {
    _loadStorage();
    super.onInit();
  }

  selectedIndex(int index) {
    _isSelectedIndex.value = index;
  }

  _loadStorage() async {
    try {
      _requestToken = await _storageRepository.getSession();
      userModel = await _userRepository.getInformation(
        token: _requestToken.requestToken ?? "",
        idUser: _requestToken.idUser ?? 0,
      );

      name.value = userModel.name ?? "";
      address.value = userModel.address ?? "No tengo direccion";

      //_loadHouses();
    } catch (e) {
      print("ERROR");
      print(e);
    }
  }

  _loadHouses() async {
    try {
      houses.value = await _houseRepository.getHouses(
          token: "${_requestToken.requestToken}");
    } catch (e) {
      print("ERROR2");
      print(e);
    }
  }
}
