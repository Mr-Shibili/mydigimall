import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_digi_mall/views/auth/log_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Digi Mall',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              titleTextStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black, size: 35)),
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
          // useMaterial3: true,
          textTheme: const TextTheme(
              titleLarge: TextStyle(fontSize: 28),
              titleMedium: TextStyle(fontSize: 24),
              titleSmall: TextStyle(fontSize: 18))),
      home: const LogIn(),
      initialBinding: BindingsBuilder(() {}),
    );
  }
}
