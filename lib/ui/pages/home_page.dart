import 'package:flutter/cupertino.dart';
import 'package:mi_primera_pagina_web/ui/shared/custom_app_menu.dart';
import 'package:mi_primera_pagina_web/ui/views/about_view.dart';
import 'package:mi_primera_pagina_web/ui/views/contact_view.dart';
import 'package:mi_primera_pagina_web/ui/views/home_view.dart';
import 'package:mi_primera_pagina_web/ui/views/location_view.dart';
import 'package:mi_primera_pagina_web/ui/views/pricing_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.extraLightBackgroundGray,
      child: Container(
        decoration: builBoxDecoration(),
        child: const Stack(
          children: [

             _HomeBody(),

            Positioned(
              right: 20,
              top: 20,
              child: CustomAppMenu()
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration builBoxDecoration() {
    return const BoxDecoration(
        gradient: LinearGradient(
          colors:[
            Color(0xff526BF6),
            Color(0xff67ACF2),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5,0.5],
        )
      );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Listener(
      //onPointerSignal:PointerScrollEvent ,
      child: PageView(
       scrollDirection: Axis.vertical,
        children: const [
          HomeView(),
          AboutView(),
          PricingView(),
          ContactView(),
          LocationView(),

        ],
      ),
    );
  }
}
