import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';



void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    super.initState();
    initialization();
  }
  
  void initialization() async {
    await Future.delayed(const Duration(seconds:3));
    FlutterNativeSplash.remove();
  }
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(	173, 216, 230, 50),
        body: Center(
          child:Text('Bienvenue sur Learn Arabic Kids !',
          style: TextStyle(
            fontSize: 24, 
            fontWeight: FontWeight.bold),
          )
        ),
      )
    );
  }
}




