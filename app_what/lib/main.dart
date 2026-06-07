import 'package:app_what/screen/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title: "wdigetsApp",
     theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 60, 164, 91))
     ),
     home: MainScreen(

     ),
    );
  }

}