import 'package:flutter/cupertino.dart';
import 'package:mi_primera_pagina_web/routers/router.dart';


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    Flurorouter.configureRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return  CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: const CupertinoThemeData(brightness: Brightness.light),
      title: 'Cupertino App',
      initialRoute: '/home',
      onGenerateRoute: Flurorouter.router.generator,
    );
  }
}
