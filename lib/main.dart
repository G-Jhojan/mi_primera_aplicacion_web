import 'package:flutter/cupertino.dart';
import 'package:mi_primera_pagina_web/routers/router.dart';
import 'package:provider/provider.dart';

import 'providers/page_provider.dart';


void main() => runApp(const MyApp());


class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => PageProvider()),
    ],
    child: const MyApp(),

    );
  }
}

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
//
//
//import 'package:flutter/cupertino.dart';
//
///// Flutter code sample for [CupertinoActionSheet].
//
//void main() => runApp(const ActionSheetApp());
//
//class ActionSheetApp extends StatelessWidget {
//  const ActionSheetApp({super.key});
//
//  @override
//  Widget build(BuildContext context) {
//    return const CupertinoApp(
//      theme: CupertinoThemeData(brightness: Brightness.light),
//      home: ActionSheetExample(),
//    );
//  }
//}
//
//class ActionSheetExample extends StatelessWidget {
//  const ActionSheetExample({super.key});
//
//  // This shows a CupertinoModalPopup which hosts a CupertinoActionSheet.
//  void _showActionSheet(BuildContext context) {
//    showCupertinoModalPopup<void>(
//      context: context,
//      builder: (BuildContext context) => CupertinoActionSheet(
//        title: const Text('Title'),
//        message: const Text('Message'),
//        actions: <CupertinoActionSheetAction>[
//          CupertinoActionSheetAction(
//            /// This parameter indicates the action would be a default
//            /// default behavior, turns the action's text to bold text.
//            isDefaultAction: true,
//            onPressed: () {
//              Navigator.pop(context);
//            },
//            child: const Text('Default Action'),
//          ),
//          CupertinoActionSheetAction(
//            onPressed: () {
//              Navigator.pop(context);
//            },
//            child: const Text('Action'),
//          ),
//          CupertinoActionSheetAction(
//            /// This parameter indicates the action would perform
//            /// a destructive action such as delete or exit and turns
//            /// the action's text color to red.
//            isDestructiveAction: true,
//            onPressed: () {
//              Navigator.pop(context);
//            },
//            child: const Text('Destructive Action'),
//          ),
//        ],
//      ),
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return CupertinoPageScaffold(
//      navigationBar: const CupertinoNavigationBar(
//        middle: Text('CupertinoActionSheet Sample'),
//      ),
//      child: Center(
//        child: CupertinoButton(
//          onPressed: () => _showActionSheet(context),
//          child: const Text('CupertinoActionSheet'),
//        ),
//      ),
//    );
//  }
//}
//
