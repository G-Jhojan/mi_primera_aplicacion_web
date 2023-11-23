//import 'package:flutter/material.dart';
//import 'package:mi_primera_pagina_web/ui/pages/home_page.dart';
//
//void main() => runApp(const MyApp());
//
//class MyApp extends StatelessWidget {
//  const MyApp({super.key});
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'Material App',
//      home: Scaffold(
//        appBar: AppBar(
//          title: const Text('Material App Bar'),
//        ),
//        body: const HomePage()
//      ),
//    );
//  }
//}
//

import 'package:flutter/cupertino.dart';

/// Flutter code sample for [CupertinoPageScaffold].

void main() => runApp(const PageScaffoldApp());

class PageScaffoldApp extends StatelessWidget {
  const PageScaffoldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: PageScaffoldExample(),
    );
  }
}

class PageScaffoldExample extends StatefulWidget {
  const PageScaffoldExample({super.key});

  @override
  State<PageScaffoldExample> createState() => _PageScaffoldExampleState();
}

class _PageScaffoldExampleState extends State<PageScaffoldExample> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemPink,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text('You have pressed the button $_count times.'),
            ),
            const SizedBox(height: 20.0),
            Center(

              child: CupertinoButton.filled(
              child: const Icon(CupertinoIcons.add),
               onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute<void>(
                        builder: (BuildContext context) {
                          return const Home();
                        },
                      ),
                    );
                  },
                //child: const Icon(CupertinoIcons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(
      child: Center(),
    );
  }
}
