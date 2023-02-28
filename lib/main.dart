import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Network/NetworkHandler/network_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Routines',
      initialBinding: NetworkBinding(),
      theme: ThemeData.light(),
      home: const Text('Hello'),
    );
  }
}

/*
return GetMaterialApp(
      initialBinding: NetworkBinding(),
    );
*/
