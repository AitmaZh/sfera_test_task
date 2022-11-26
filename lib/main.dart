import 'package:flutter/material.dart';
import 'package:l10n_flutter/l10n_material_app.dart';
import 'package:sfera_test_task/ui/login_page.dart';
import './localization/l10n/app_ln10.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sfera Test Task',
      home: LoginPage(),
    );
  }
}
