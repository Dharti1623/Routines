import 'package:get/get.dart';
import '../../Config/Services/network_manager.dart';

class NetworkBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<GetXNetworkManager>(() => GetXNetworkManager());
    // Get.lazyPut<UserViewModel>(() => UserViewModel(),fenix: true);
  }
}