/*
Welcome to my spaghetti code :)
 */

import 'package:flutter/material.dart';
import 'package:growpal_hackathon/pages/CartPage.dart';
import 'package:growpal_hackathon/pages/Chekout.dart';
import 'package:growpal_hackathon/pages/ConfirmationPage.dart';
import 'package:growpal_hackathon/pages/HomePage.dart';
import 'package:growpal_hackathon/pages/ProdPage.dart';
import 'package:growpal_hackathon/pages/LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:growpal_hackathon/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => const LoginPage(),
        "HomePage": (context) => const HomePage(),
        "cartPage": (context) => const CartPage(),
        "prodPage": (context) => const ProdPage(),
        "checkout": (context) => const Checkout(),
        "confirmation": (context) => const ConfirmationPage(),
      },
    );
  }
}
