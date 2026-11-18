import 'package:get/get.dart';
import 'package:jovita_pas_mobile/controller/main_menu_controller.dart';

class MenuDrawerController extends GetxController {
  final mainMenuController = Get.find<MainMenuController>();

  void changePage(int index) {
    mainMenuController.changePage(index);
  }
}
