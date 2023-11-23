import 'package:fluro/fluro.dart';
import 'package:mi_primera_pagina_web/routers/router_handlers.dart';

class Flurorouter{

static final FluroRouter router = FluroRouter();

static void configureRoutes(){
  //rutas
  router.define('/:page', handler: homeHandler);

  //404
  router.notFoundHandler = homeHandler;



  }
}
