
import 'package:fluro/fluro.dart';
import 'package:mi_primera_pagina_web/ui/pages/home_page.dart';

final homeHandler = Handler(
  handlerFunc: (context, params) {
    return const HomePage();
  }
);
