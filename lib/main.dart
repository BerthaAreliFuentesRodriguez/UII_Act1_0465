import 'package:flutter/material.dart';
import 'package:fuentes_uii_act1_0465/pantallas0465/panel0465/panel_pantalla0465.dart';

void main() => runApp(MiAppComics());

class MiAppComics extends StatelessWidget {
  const MiAppComics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fuentes Comics0465",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
          useMaterial3: true),
      home: PanelPantalla0465(),
    );
  }
}
