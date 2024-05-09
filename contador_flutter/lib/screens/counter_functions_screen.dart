// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class CounterFunctionsScreen extends StatefulWidget {
  
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;
  var layout = MainAxisAlignment.center;

  @override
  Widget build(BuildContext context) {

    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: layout,
          children: [
            Text('$clickCounter', 
                   style: const TextStyle( fontSize: 160, fontWeight: FontWeight.w100),),
            
            if( clickCounter == 1)
            Text('Click', style: TextStyle( fontSize: 25,)),

            if( clickCounter > 1 || clickCounter == 0)
            Text('Clicks', style: TextStyle( fontSize: 25,))
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        activeIcon: Icons.close,
        backgroundColor: Color.fromARGB(255, 16, 127, 183),
        children: [
          SpeedDialChild(
            label: 'Restart',
            child:
            CustomButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
            },
          ),   
          ),
          SpeedDialChild(
            label: 'Add 1',
            child:
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
            },
          ),  
          ),
          SpeedDialChild(
            label: 'Subtract 1',
            child:
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() {
                  if(clickCounter > 0){
                      clickCounter--;
                  }
                });
            },
          ),   
          ),
          SpeedDialChild(
            label: 'Next Layout',
            child:
            CustomButton(
              icon: Icons.layers_outlined,
              onPressed: (){
                  layout = nextEnumLayout(layout);
                  setState(() {});
                },
          ),   
          )
        ],
      ),
    );
  }

  void nextLayout(){
    setState(() {
      layout = nextEnumLayout(layout);
    });
}

MainAxisAlignment nextEnumLayout(MainAxisAlignment value){
  final nextIndex = (value.index + 1) % MainAxisAlignment.values.length;
  return MainAxisAlignment.values[nextIndex]; 
}
}


class CustomButton extends StatelessWidget {

final IconData icon;
final VoidCallback? onPressed;

  const CustomButton({
    super.key, 
    required this.icon, 
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
           onPressed: onPressed,
           child: Icon(icon),  
    );
  }
}