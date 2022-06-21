import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'utils/bindings/binding.dart';
import 'view/news_view.dart';

// GetIt locator = GetIt.instance;

// void setupLocator() {
// locator.registerLazySingleton(() => NavigationService());
// }

void main() {
  // setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MVVM DEMO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/news', page: () => NewsView(), binding: Binding())
      ],
      initialRoute: '/news',
    );
  }
}
