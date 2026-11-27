

import 'package:flutter/material.dart';

class WidgetsPantalla extends StatefulWidget {
  const WidgetsPantalla({super.key});

  @override
  State<WidgetsPantalla> createState() => _WidgetsPantallaState();
}

class _WidgetsPantallaState extends State<WidgetsPantalla> {

    bool switchValor=true;
    bool chekValor=true;
    double sliderValor=0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ventana 2: Wigets'),
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {
        showDialog(context: context, builder: (context)=>AlertDialog(
          title: Text('Alerta Dialogo'),
          content: Text('Este mensaje es el contenido de alerta'),
          actions: [TextButton(onPressed: ()=>Navigator.pop(context), child: Text('Cerrar'))],
        ));
      },
      child: Icon(Icons.message),),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Text(
        'Tipografía del (textTheme)',
        style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
        'este es un párrafo usando bodyLarge',
        style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 30),
            const Divider(),
            Wrap(
        spacing: 12,
        runSpacing: 12,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
          OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
          TextButton(onPressed: () {}, child: const Text('TextButton')),
        ],
            ),
            const SizedBox(height: 30),
            const Divider(),
        
        SizedBox(height: 20,),
              Text('Inputs del (textTheme)',
              style: Theme.of(context).textTheme.titleLarge,),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Correo Electronico',
                  prefixIcon: Icon(Icons.email)
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Telefono',
                  prefixIcon: Icon(Icons.phone)
                ),
              ),
        
              SizedBox(height: 25,),
              const Divider(),
        
              Text ('Cards del (text Theme)',
              style: Theme.of(context).textTheme.titleLarge), // Text
                SizedBox(height: 25),
        
              Card (
                child: Padding(
                  padding: EdgeInsets.all(15),
                child: Column(
                    children: [
                          SwitchListTile(
                  title: Text('Activar notifiaciones'),
            value: switchValor,
              onChanged: (val)=> setState(() {
                      switchValor= val;
            })
            ) // SwitchListTile
                    ]
          ), // Column
          ), 
          ),// Padding
        // CardSizedBox(height: 25,),
              const Divider(),
        
              Text ('Cards del (text Theme)',
              style: Theme.of(context).textTheme.titleLarge), // Text
                SizedBox(height: 25),
        
              Card (
                child: Padding(
                  padding: EdgeInsets.all(15),
                child: Column(
                    children: [
                          CheckboxListTile(
                  title: Text('Activar notifiaciones'),
            value: chekValor,
              onChanged: (val)=> setState(() => chekValor=val ?? false
                      
            ),
            ),
            Slider(value: sliderValor,
             onChanged: (val)=> setState(() {
               sliderValor=val;
             }))
                    ]
          ), // Column
          ), 
          ),
        SizedBox(height: 25,),
          Text('Chips (chipTheme)', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            const Wrap(
              spacing: 8,
              children: [
                Chip(label: Text('Flutter')),
                Chip(label: Text('Dart')),
                Chip(label: Text('Material 3')),
              ],
            ),
        
        
          ],
        ),
      ),

    );
  }
}