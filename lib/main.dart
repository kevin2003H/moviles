import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primera aplicación Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido a Flutter'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Título Grande',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Título Mediano',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Texto Normal',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            ListTile(
              title: Text('Opción 1'),
              onTap: () {
                // Acción para la opción 1
              },
            ),
            ListTile(
              title: Text('Opción 2'),
              onTap: () {
                // Acción para la opción 2
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.0), // Espacio entre el texto de la AppBar y los mini rectángulos
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100, // Ancho del rectángulo
                  height: 30, // Altura del rectángulo
                  color: Colors.red,
                ),
                SizedBox(width: 10.0), // Espacio entre los mini rectángulos
                Container(
                  width: 100, // Ancho del rectángulo
                  height: 30, // Altura del rectángulo
                  color: Colors.green,
                ),
                SizedBox(width: 10.0), // Espacio entre los mini rectángulos
                Container(
                  width: 100, // Ancho del rectángulo
                  height: 30, // Altura del rectángulo
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(height: 20.0), // Espacio entre los mini rectángulos y el texto "Lorem ipsum..."
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20.0), // Espacio entre el texto y la fila de iconos
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            size: 50.0,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Tiempo',
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8.0),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {
                                // Acción al presionar el icono del reloj
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Reloj'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 100.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.vpn_key,
                            size: 50.0,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Clave',
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8.0),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {
                                // Acción al presionar el icono de la llave
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Llave'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 100.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.camera_alt,
                            size: 50.0,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Cámara',
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8.0),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {
                                // Acción al presionar el icono de la cámara
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Cámara'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0), // Espacio entre los botones y la lista
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(4, (index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Elemento $index',
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Descripción del elemento $index',
                        style: TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                      SizedBox(height: 10.0), // Espacio entre elementos de la lista
                    ],
                  );
                }),
              ),
            ),
            SizedBox(height: 20.0), // Espacio entre la lista y el texto final
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.0), // Espacio para asegurar que el texto
            // Parte modificada
            Text(
              'Fin de la aplicación',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            // Fin de la parte modificada
          ],
        ),
      ),
    );
  }
}
