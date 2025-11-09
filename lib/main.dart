import 'package:flutter/material.dart';



/// Flutter basic
/// 
/// 

void main() {
  runApp(MyApp());
}


// lets make a stateless widget in order to enable the hot reload for our applications
// for this do note that everything we will have to do will be a class
// so lets define a class for this purpose
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Material(
        child: Column(
          children: [
            Text('Hello world'),
            Text('This is a column widget which is used to learn flutter'),
            Text("this is some random thingy here"),
            Text("this is some random thingy here"), 
            Text("This is test application of flutter for learning purpose"),
            Text("This is test application of flutter for learning purpose"),
            
          ],
        ),
      ),
    ));
  }

}