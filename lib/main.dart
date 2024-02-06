
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/Intro/intro.dart';
import 'package:furniture_shop/auth_service.dart';
import 'package:furniture_shop/auth_state.dart';
import 'package:furniture_shop/firebase_options.dart';
import 'package:furniture_shop/home/home.dart';
import 'package:furniture_shop/themes/light_mode.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ChangeNotifierProvider(
    create: (context) =>  AuthService(),
      child: const MyApp()));
  // ##B09165
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
        home: const AuthState(),routes: {
        '/intro' : (context) =>  const Intro(),
        '/home' : (context) =>  const Home(),
    }
      ,);
  }
}
