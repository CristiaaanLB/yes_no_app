import 'package:flutter/material.dart';

  //Declaramos una variable con un color personalizado
  const Color _customColor = Color(0xFF49149F);

  //Lista de colores permitidos
  const List<Color> _colorThemes = [
    _customColor,
    Colors.blue,
    Colors.teal,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.pink,
  ];

class AppTheme{
  
  //Parametros del constructor
  final int selectedColor;

  //Inicializar los parametros de entrada requeridos
  //Constructor es el que tiene el mismo nombre que la clase
  AppTheme({ required this.selectedColor })
  :assert(selectedColor >=0 && selectedColor <= _colorThemes.length-1,
  'Los colores permitidos deben estar entre 0 y ${_colorThemes.length-1}');

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor]
    );
  }

}