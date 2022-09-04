import 'package:get/get.dart';

import '../controllers/app_controller.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}
