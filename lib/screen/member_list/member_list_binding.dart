import 'package:get/get.dart';
import 'package:flutterclassrjs/screen/member_list/member_list_logic.dart';

class MemberListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MemberListLogic());
    // Get.lazyPut(() => HomeLogic());
  }
}