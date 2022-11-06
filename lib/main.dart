import 'package:flutter/material.dart';
import 'package:fundamento/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //tema dark
      theme: ThemeData.dark(),
      title: 'proyecto bluetooth',
      //las rutas son instanciadas de la carpeta routes y se llama el mapa de "appRoutes"
      routes: appRoutes,
      //se inicializa con el nombre de la ruta creada en appRoutes
      initialRoute: 'home',
    );
  }
}
