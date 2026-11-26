import 'package:flutter/material.dart';

class AppTheme{

  static const Color _indigo = Colors.indigo;
  static const Color _indigoAccent = Colors.indigoAccent;
  static const Color _lightBlue = Colors.lightBlue;

 static ThemeData get temaPrincipal {

    final colorScheme= ColorScheme.fromSeed(
        seedColor: _indigo,
        primary: _indigo,
        onPrimary: _indigoAccent,
        secondary: _lightBlue,
      );




     return ThemeData(

      
      appBarTheme: AppBarTheme(
  backgroundColor: colorScheme.primary,
  foregroundColor: colorScheme.onPrimary,
  centerTitle: true,
  elevation: 6,
  shadowColor: Colors.black45,
  iconTheme: IconThemeData(
    color:Colors.white,
    size: 28,
  ),
  actionsIconTheme: IconThemeData(
    color: Colors.white,
    size: 26,
  ),
  
  titleTextStyle: TextStyle(
    letterSpacing: 5,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: colorScheme.primary,
      side: BorderSide(color: colorScheme.primary, width: 3),
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 14)
    )
  ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: colorScheme.primary,
        side:  BorderSide(
          color: colorScheme.primary,
          width: 7,
        ),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      )
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: colorScheme.primary,
        textStyle: TextStyle(fontWeight: FontWeight.bold
      ),
    ),
    ),








  textTheme: TextTheme(
    headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: -0.5
  ), titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
  bodyLarge: TextStyle(fontSize: 20, height: 1.5),
  bodyMedium: TextStyle(fontSize: 14)

  ),

   /////////////////////alert dialog////////////////////
      dialogTheme: DialogThemeData(
        backgroundColor: Colors.white,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
          side: BorderSide(color: colorScheme.primary , width: 3)
        ),
        titleTextStyle: TextStyle(
          color: colorScheme.primary,
          fontSize: 40,
          fontWeight: FontWeight.bold
        ),
        contentTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w400
        ),


      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.deepPurple.shade100,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: colorScheme.primary, width: 5),
        ),
        labelStyle: TextStyle(color: colorScheme.secondary),
        prefixIconColor: colorScheme.primary,
        prefixIconConstraints: BoxConstraints(
          minWidth: 48,
          maxHeight: 48,
        ),
      ),

      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          return states.contains(WidgetState.selected) ? colorScheme.primary : Colors.blue;
        },
      ),

      trackColor: WidgetStateProperty.resolveWith((states) {
          return states.contains(WidgetState.selected) ? colorScheme.onPrimary : const Color.fromARGB(255, 184, 204, 221);
        },),),
        checkboxTheme: CheckboxThemeData(fillColor: WidgetStateProperty.resolveWith((states) {
          return states.contains(WidgetState.selected) ? colorScheme.onPrimary : const Color.fromARGB(255, 184, 204, 221);
        },),
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(4)) ),

        sliderTheme: SliderThemeData(
          activeTrackColor: colorScheme.primary,
          inactiveTrackColor: Colors.black,
          thumbColor: Colors.greenAccent
        ),
        chipTheme: ChipThemeData(
          backgroundColor: colorScheme.primary,
          labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(4)),
          side:  BorderSide.none
        ),
          dividerTheme: DividerThemeData(
        color: colorScheme.primary,
        thickness: 2.5,
        space: 32
      ),
      
      iconTheme: IconThemeData(
        color: colorScheme.primary,
        size: 30
      )
     );
 }
 
 }