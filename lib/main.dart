import 'package:flutter/material.dart';
import 'package:britany/pages/auth/login_page.dart';  
import 'package:britany/pages/home_screen.dart';      

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',  // Ruta inicial: la pantalla de login
      routes: {
        '/': (context) => const LoginPage(),   // Primera pantalla(login)
        '/home': (context) => const HomeScreen(),  // Pantalla principal con navegación
      },
    );
  }
}
