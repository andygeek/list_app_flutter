import 'package:flutter/material.dart';

final icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open
};

Icon getIcon(String nombre) {
  return Icon(icons[nombre]);
}
