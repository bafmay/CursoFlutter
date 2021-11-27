import 'package:app_hoteles/app/data/providers/auth_provider.dart';
import 'package:app_hoteles/app/data/providers/house_provider.dart';
import 'package:app_hoteles/app/data/providers/local/storage_provider.dart';
import 'package:app_hoteles/app/data/providers/user_provider.dart';
import 'package:app_hoteles/app/data/repositories/auth_repository.dart';
import 'package:app_hoteles/app/data/repositories/house_repository.dart';
import 'package:app_hoteles/app/data/repositories/local/storage_repository.dart';
import 'package:app_hoteles/app/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void load() {
    //Providers
    Get.put<AuthProvider>(AuthProvider());
    Get.put<UserProvider>(UserProvider());
    Get.put<StorageProvider>(StorageProvider());
    Get.put<HouseProvider>(HouseProvider());

    //Repositories
    Get.put<AuthRepository>(AuthRepository());
    Get.put<UserRepository>(UserRepository());
    Get.put<HouseRepository>(HouseRepository());
    Get.put<StorageRepository>(StorageRepository());
  }
}
