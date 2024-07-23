import 'package:flutterclassrjs/routes/app_routes.dart';
import 'package:flutterclassrjs/screen/auth/login/login_binding.dart';
import 'package:flutterclassrjs/screen/auth/login/login_view.dart';
import 'package:flutterclassrjs/screen/home/home_binding.dart';
import 'package:flutterclassrjs/screen/home/home_view.dart';
import 'package:flutterclassrjs/screen/notice_details/notice_details_binding.dart';
import 'package:flutterclassrjs/screen/notice_details/notice_details_view.dart';
import 'package:flutterclassrjs/screen/shop_home/shop_home_binding.dart';
import 'package:flutterclassrjs/screen/shop_home/shop_home_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.homeScreen,
        page: () => const MyHomePage(),
        binding: HomeBinding()),
    GetPage(
        name: AppRoutes.noticeDetailsScreen,
        page: () => const NoticeDetailsView(),
        binding: NoticeDetailsBinding()),
    GetPage(
        name: AppRoutes.memberListScreen,
        page: () => const NoticeDetailsView(),
        binding: NoticeDetailsBinding()),

        GetPage(
        name: AppRoutes.loginScreen,
        page: () => const LoginPage(),
        binding: LoginBinding()),

        GetPage(
        name: AppRoutes.shopHomeScreen,
        page: () => const ShopHomePage(),
        binding: ShopHomeBinding()),
        
  ];
}