import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:routines/Collections/category.dart';
import 'package:routines/Collections/routine.dart';
import 'Network/NetworkHandler/network_binding.dart';
import 'package:path_provider/path_provider.dart';


Future<void> main() async {
  final dir= await getApplicationSupportDirectory();
  final isar = await Isar.open([RoutineSchema,CategorySchema]);
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
