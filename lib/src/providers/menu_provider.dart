import 'dart:convert';
import 'package:flutter/services.dart';

class MenuProvider {
  List<dynamic> opciones = [];

  Future<List<dynamic>> cargarData() async {
    final respuesta = await rootBundle.loadString('data/menu.json');
    Map<String, dynamic> dataMap = json.decode(respuesta);
    opciones = dataMap['menu'];
    return opciones;
  }
}

final menuProvider = MenuProvider();
