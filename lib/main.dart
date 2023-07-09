import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scan_barcode_dua/firebase_options.dart';
import 'package:scan_barcode_dua/routes/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}