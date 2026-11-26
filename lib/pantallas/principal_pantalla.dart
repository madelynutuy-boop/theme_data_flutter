import 'package:flutter/material.dart';
import 'package:flutter_theme/pantallas/widgets_pantalla.dart';

class PrincipalPantalla extends StatelessWidget {
  const PrincipalPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Ventana 1: Inicio'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.palette, size:80),
              SizedBox(height: 16,),
              Text('Themedata Implementado',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,),
               SizedBox(height: 12,),
              Text('Toda la configuracion visual de la aplicacion esta centralizada en main.dart. Presiona el botón para ver los widgets en acción'
              ,textAlign: TextAlign.center,
               style: Theme.of(context).textTheme.bodyLarge,),
          
                 SizedBox(height: 32,),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> const WidgetsPantalla()));
                  },
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('Ir a Ventana de Widgets'),)
              
          
            ],
          ),
        ),
      )
    );
  }
}