import 'package:flutter/material.dart';
import 'package:list_app/src/providers/menu_provider.dart';
import 'package:list_app/src/utils/string_to_icon.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Estado();
  }
}

class Estado extends State<HomePage> {
  final opciones = ['Primero', 'Segundo', 'Tercero'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Lista desde un Json')), body: listView());
  }

  Widget listView() {
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: listaItems(snapshot.data),
          );
        });
  }

  List<Widget> listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];
    data.forEach((element) {
      final widgTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icono']),
        onTap: () {},
      );
      opciones.add(widgTemp);
    });

    return opciones;
  }
}
