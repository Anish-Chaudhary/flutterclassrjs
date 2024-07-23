import 'package:get/get.dart';
import 'package:flutterclassrjs/screen/notice_details/notice_details_logic.dart';

class NoticeDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoticeDetailsLogic());
  }
}
