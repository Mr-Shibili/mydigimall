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
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white, size: 30),
            titleTextStyle: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20,
                fontWeight: FontWeight.bold),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
          fontFamily: 'OpenSans',
          // useMaterial3: true,
          textTheme: const TextTheme(
              titleLarge: TextStyle(fontSize: 28),
              titleMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              titleSmall: TextStyle(fontSize: 18))),
      home: const LogIn(),
      initialBinding: BindingsBuilder(() {}),
    );
  }
}
