import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_example/binding.dart/doctors_binding.dart';
import 'package:getx_api_example/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
            name: "/home",
            page: () => const HomeScreen(),
            binding: DoctorsBinding())
      ],
      initialRoute: "/home",
    );
  }
}
