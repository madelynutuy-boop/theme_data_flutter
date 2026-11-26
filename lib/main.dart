import 'package:flutter/material.dart';
import 'package:flutter_theme/pantallas/principal_pantalla.dart';



import 'package:flutter_theme/temas/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       theme: AppTheme.temaPrincipal,
      home:PrincipalPantalla()
        );
     
   
  }
}
