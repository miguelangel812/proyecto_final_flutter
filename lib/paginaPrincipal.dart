// ignore_for_file: file_names

import 'package:direct_select/direct_select.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_final_flutter/registro.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: camel_case_types
class paginaPrincipal extends StatelessWidget {
  const paginaPrincipal({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicación',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _paginaActual = 0;

  // ignore: prefer_final_fields
  List<Widget> _paginas = [Screen1(), Screen2(), const direcSelect()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_paginaActual],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _paginaActual = index;
          setState(() {
            _paginaActual = index;
          });
        },
        currentIndex: _paginaActual,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.badge), label: "Plantilla"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.engineering), label: "Ajustes"),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Screen1() {
  return Scaffold(
      //backgroundColor: Colors.black,
      body: Column(children: <Widget>[
    Expanded(
      child: (WebView(
        initialUrl: registro.web,
        onWebViewCreated: (WebViewController webViewController) {},
      )),
    )
  ]));
}

// ignore: non_constant_identifier_names
Widget Screen2() {
  // ignore: avoid_unnecessary_containers
  return Container(
    child: const Center(
      child: Text('pantalla menu 1'),
    ),
  );
}

// ignore: camel_case_types
class direcSelect extends StatefulWidget {
  const direcSelect({Key? key}) : super(key: key);

  @override
  _direcSelectState createState() => _direcSelectState();
}

// ignore: camel_case_types
class _direcSelectState extends State<direcSelect> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          _equipo(),
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
        ],
      ),
    );
  }
}

Widget _equipo() {
  return const Center(
      child: Text(
    "Elige equipo",
    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
  ));
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
