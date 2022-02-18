// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:direct_select/direct_select.dart';

final controlUsuario = TextEditingController();
final controlPass = TextEditingController();
final correoElectronico = TextEditingController();

// ignore: camel_case_types
class registro extends StatefulWidget {
  static String fondo = 'images/realmadrid.png';
  static String equipo = '';
  static String web = 'https://www.realmadrid.com/';

  const registro({Key? key}) : super(key: key);

  @override
  State<registro> createState() => registroState();
}

// ignore: camel_case_types
class registroState extends State<registro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                child: Image.asset(
              registro.fondo,
              height: 150,
              width: 500,
            )),
            _userTextField(),
            _userText(),
            _passwordTextField(),
            const SizedBox(
              height: 20,
            ),
            DirectSelect(
                itemExtent: 35.0,
                selectedIndex: selectedIndex1!,
                child: MySelectionItem(
                  isForList: false,
                  title: elements1[selectedIndex1!],
                ),
                onSelectedItemChanged: (index) {
                  setState(() {
                    selectedIndex1 = index;
                    if (index == 0) {
                      registro.fondo = 'images/realmadrid.png';
                      registro.equipo = elements1[0];
                      registro.web = "https://www.realmadrid.com/";
                    }
                    if (index == 1) {
                      registro.fondo = 'images/sevilla.jpg';
                      registro.equipo = elements1[1];
                      registro.web = "https://sevillafc.es/";
                    }
                    if (index == 2) {
                      registro.fondo = 'images/betis.jpg';
                      registro.equipo = elements1[2];
                      registro.web = "https://www.realbetisbalompie.es/";
                    }
                    if (index == 3) {
                      registro.fondo = 'images/barcelona.jpg';
                      registro.equipo = elements1[3];
                      registro.web = "https://www.fcbarcelona.es/es/";
                    }
                    if (index == 4) {
                      registro.fondo = 'images/atmadrid.png';
                      registro.equipo = elements1[4];
                      registro.web = "https://www.atleticodemadrid.com/";
                    }
                    if (index == 5) {
                      registro.fondo = 'images/villareal.jpg';
                      registro.equipo = elements1[5];
                      registro.web = "https://villarrealcf.es/";
                    }
                    if (index == 6) {
                      registro.fondo = 'images/realsociedad.jpg';
                      registro.equipo = elements1[6];
                      registro.web = "https://www.realsociedad.eus/";
                    }
                    if (index == 7) {
                      registro.fondo = 'images/athletic.gif';
                      registro.equipo = elements1[7];
                      registro.web = "https://www.athletic-club.eus/";
                    }
                    if (index == 8) {
                      registro.fondo = 'images/rayo.png';
                      registro.equipo = elements1[8];
                      registro.web = "http://www.rayovallecano.es/";
                    }
                    if (index == 9) {
                      registro.fondo = 'images/celta.jpg';
                      registro.equipo = elements1[9];
                      registro.web = "https://rccelta.es/";
                    }
                    if (index == 10) {
                      registro.fondo = 'images/valencia.png';
                      registro.equipo = elements1[10];
                      registro.web = "https://www.valenciacf.com/es";
                    }
                    if (index == 11) {
                      registro.fondo = 'images/osasuna.jpg';
                      registro.equipo = elements1[11];
                      registro.web = "https://www.osasuna.es/";
                    }
                    if (index == 12) {
                      registro.fondo = 'images/espanol.jfif';
                      registro.equipo = elements1[12];
                      registro.web = "https://www.rcdespanyol.com/";
                    }
                    if (index == 13) {
                      registro.fondo = 'images/elche.png';
                      registro.equipo = elements1[13];
                      registro.web = "https://www.elchecf.es/";
                    }
                    if (index == 14) {
                      registro.fondo = 'images/getafe.png';
                      registro.equipo = elements1[14];
                      registro.web = "https://www.getafecf.com/home.aspx";
                    }
                    if (index == 15) {
                      registro.fondo = 'images/granada.jpg';
                      registro.equipo = elements1[15];
                      registro.web = "https://www.granadacf.es/";
                    }
                    if (index == 16) {
                      registro.fondo = 'images/mallorca.png';
                      registro.equipo = elements1[16];
                      registro.web = "https://www.rcdmallorca.es/";
                    }
                    if (index == 17) {
                      registro.fondo = 'images/cadiz.png';
                      registro.equipo = elements1[17];
                      registro.web = "https://www.cadizcf.com/";
                    }
                    if (index == 18) {
                      registro.fondo = 'images/alaves.jfif';
                      registro.equipo = elements1[18];
                      registro.web = "https://www.deportivoalaves.com/";
                    }
                    if (index == 19) {
                      registro.fondo = 'images/levante.png';
                      registro.equipo = elements1[19];
                      registro.web = "https://www.levante-emv.com/";
                    }
                  });
                },
                mode: DirectSelectMode.tap,
                items: _buildItems1()),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: _botonRegistrar(),
            ),
          ],
        ),
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

Widget _userText() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          icon: Icon(Icons.people),
          hintText: 'salas',
          labelText: 'Usuario',
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

Widget _botonRegistrar() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return RaisedButton(
      onPressed: () {},
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

final elements1 = [
  'REAL MADRID',
  'SEVILLA FC',
  'REAL BETIS',
  'FC BARCELONA',
  'ATLÉTICO DE MADRID',
  'VILLARREAL CF',
  'REAL SOCIEDAD',
  'ATHLETIC CLUB',
  'RAYO VALLECANO',
  'RC CELTA',
  'VALENCIA CF',
  'CA OSASUNA',
  'RCD ESPANYOL',
  'ELCHE CF',
  'GETAFE CF',
  'GRANADA CF',
  'RCD MALLORCA',
  'CÁDIZ CF',
  'DEPORTIVO ALAVÉS',
  'LEVANTE UD',
];
int? selectedIndex1 = 0;

List<Widget> _buildItems1() {
  return elements1
      .map((val) => MySelectionItem(
            title: val,
          ))
      .toList();
}

class MySelectionItem extends StatelessWidget {
  final String? title;
  final bool isForList;

  const MySelectionItem({Key? key, this.title, this.isForList = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: isForList
          ? Padding(
              child: _buildItem(context),
              padding: const EdgeInsets.all(10.0),
            )
          : Card(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Stack(
                children: <Widget>[
                  _buildItem(context),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.arrow_drop_down),
                  )
                ],
              ),
            ),
    );
  }

  Widget _buildItem(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: FittedBox(
          child: Text(
        title!,
      )),
    );
  }
}
