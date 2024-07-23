import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterclassrjs/routes/app_pages.dart';
// import 'package:flutterclassrjs/screen/auth/login/login_binding.dart';
// import 'package:flutterclassrjs/screen/auth/login/login_view.dart';
// import 'package:flutterclassrjs/screen/home/home_binding.dart';
// import 'package:flutterclassrjs/screen/home/home_view.dart';
import 'package:flutterclassrjs/screen/shop_home/shop_home_binding.dart';
import 'package:flutterclassrjs/screen/shop_home/shop_home_view.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:alice/alice.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

late Alice alice;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final storage = GetStorage();

  @override
  void initState() {
    alice = Alice(
      showNotification: true,
      showInspectorOnShake: true,
      maxCallsCount: 1000,
    );
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: kDebugMode ? alice.getNavigatorKey() : null,
      title: 'Flutter Demooo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home:
          (storage.read("is_login") != null && storage.read("is_login") == true)
              ? const ShopHomePage()
              : const ShopHomePage(),
      initialBinding:
          (storage.read("is_login") != null && storage.read("is_login") == true)
              ? ShopHomeBinding()
              : ShopHomeBinding(),
      getPages: AppPages.pages,
    );
  }
}
