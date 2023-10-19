import 'package:autenticacao_email_tdm/firebase_options.dart';
import 'package:autenticacao_email_tdm/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Autenticacao Email - TDM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(204, 144, 226, 50)),
        appBarTheme: AppBarTheme(
          elevation: 2.0,
          backgroundColor: Colors.purple[100],
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
