import 'package:flutter/material.dart';

void main() => runApp(MiFotoApp());

class MiFotoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mi ejemplo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PaginaInicio(),
    ); //fin de materialapp
  } // fn de widget
} //fin clase MiFotoApp

class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('agregando bordes app sanchez'),
        centerTitle: true,
      ), //fin de appbar
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber[100],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.purple,
                    width: 5,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Yahir Sanchez',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ), //fin de contenedor texto yahir
              SizedBox(height: 50),
              Container(
                height: 100,
                width: 100,
                child: Icon(
                  Icons.account_box,
                  color: Colors.amber,
                  size: 100,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.purple,
                      width: 5.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.purple,
                      width: 5.0,
                    ),
                  ),
                ),
              ), //fin de contenedor foto
              SizedBox(height: 50),
              Container(
                height: 100,
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 5.0,
                      ),
                    ),
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 5.0,
                      ),
                    ),
                  ),
                ),
              ), //fin contenedor grupo especialidad
            ], //fin del ni??o
          ), //fin de columna
        ), // center
      ), //FIN SINGLE
    ); //fin de scaffold
  }
}
