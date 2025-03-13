import 'package:flutter/material.dart';
import 'package:flutter_application_1/filme.dart';
import 'dart:convert';

void main() {
  runApp( const MaterialApp(title: 'AppFilmes', home: MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  
  @override

  MainAPP createState() => MainAPP();

}

class MainAPP extends State<MainApp> {
  Future<void> readJson() async{
  

  }
  
  @override
  Widget build(BuildContext context) {
    
  }

  @override
    initState(){
      readJson()
    }
}
