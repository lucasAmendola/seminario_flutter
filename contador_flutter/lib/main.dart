import 'package:flutter/material.dart';
import 'package:contador_flutter/screens/counter_functions_screen.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
      return  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Color.fromARGB(255, 247, 202, 0)
        ),
        home: const CounterFunctionsScreen()  
      );
  }
  
}