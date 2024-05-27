import 'package:contador_flutter/screens/namer_app.dart';
import 'package:flutter/material.dart';
import 'package:contador_flutter/screens/counter_functions_screen.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
 return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 75, 75)),
        ),
        home: const MyHomePage(),
      ),
    );
  }
  
}