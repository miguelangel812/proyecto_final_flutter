import 'package:flutter/material.dart';
import 'package:proyecto_final_flutter/login.dart';
import 'package:proyecto_final_flutter/registro.dart';
import 'package:proyecto_final_flutter/paginaPrincipal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto_Final_Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: loginPage.id,
      routes: {
        loginPage.id: (context) => const loginPage(),
        '/registro': (context) => const registro(),
        '/paginaPrincipal': (context) => const paginaPrincipal(),
      },
    );
  }
}
