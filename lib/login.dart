// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore: camel_case_types
class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  static String id = 'login_page';

  @override
  _loginPageState createState() => _loginPageState();
}

// ignore: camel_case_types
class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(child: Image.asset('images/logo_login.jpg')),
            const SizedBox(
              height: 15.0,
            ),
            _userTextField(),
            const SizedBox(
              height: 20,
            ),
            _passwordTextField(),
            const SizedBox(
              height: 20,
            ),
            _botonLogin(),
            const SizedBox(
              height: 20,
            ),
            _botonRegistrar(),
          ],
        )),
      ),
    );
  }
}

Widget _userTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          icon: Icon(Icons.email),
          hintText: 'ejemplo@correo.com',
          labelText: 'correo electrónico',
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget _passwordTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: const InputDecoration(
          icon: Icon(Icons.lock),
          hintText: 'contraseña',
          labelText: 'contraseña',
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget _botonLogin() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, "/paginaPrincipal");
      },
      color: Colors.amber,
      elevation: 10.0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
        child: const Text(
          'Iniciar Sesión',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  });
}

Widget _botonRegistrar() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, "/registro");
      },
      color: Colors.amber,
      elevation: 10.0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
        child: const Text(
          'Registrarme',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  });
}
/*
final controlUsuario = TextEditingController();
final controlPass = TextEditingController();

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.black,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/fondo.jpg',
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              TextField(
                controller: controlUsuario,
                autofocus: true,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Usuario',
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              TextField(
                controller: controlPass,
                obscureText: true,
                autofocus: false,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contraseña',
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                children: [
                  botonRegistrar(context),
                  botonEntrar(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget botonRegistrar(BuildContext context) {
  return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, "/registro");
      },
      child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text('Registrarme')],
          )));
}

Widget botonEntrar(BuildContext context) {
  return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, "/paginaPrincipal");
      },
      child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text('Entrar')],
          )));
}
*/