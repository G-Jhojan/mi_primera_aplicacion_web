import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mi_primera_pagina_web/ui/shared/custom_menu_item.dart';
import 'package:provider/provider.dart';

//import '../../providers/page_provider.dart';

class CustomAppMenu extends StatefulWidget {
  const CustomAppMenu({super.key});

  @override
  State<CustomAppMenu> createState() => _CustomAppMenuState();
}

class _CustomAppMenuState extends State<CustomAppMenu> with  SingleTickerProviderStateMixin{

  bool isOpen = false;
  late AnimationController? controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  Widget build(BuildContext context) {



    return  MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(

        onTap: (){
           if(isOpen){
            controller!.forward();
          } else {
            controller!.reverse();
          }

          setState(() {
            isOpen = !isOpen;
          });
        },
        child: Container(
          //duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: isOpen ? 300 : 50,
          width: 150,
          color: CupertinoColors.black,
          child:Column(
            children: [

               _MenuTitle(isOpen: isOpen, controller: controller),
               if(isOpen)
               ...[
                CustomMenuItem(delay: 0, text: 'Home', onPressed: (){}),
                CustomMenuItem(delay: 40, text: 'About', onPressed: (){}),
                CustomMenuItem(delay: 80, text: 'Pricing', onPressed: (){}),
                CustomMenuItem(delay: 100, text: 'Contact', onPressed: (){}),
                CustomMenuItem(delay: 140, text: 'Location', onPressed: (){}),
                //const SizedBox(height: 8,),
               ]
            ],
          )
        ),
      ),
    );
  }
}

class _MenuTitle extends StatelessWidget {
  const _MenuTitle({
    super.key,
    required this.isOpen,
    required this.controller,
  });

  final bool isOpen;
  final AnimationController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: isOpen ? 50 : 0,
        ),
        Text(
          'Menú',
          style: GoogleFonts.robotoCondensed(
            color: CupertinoColors.white,
            fontSize: 20,
          ),
        ),
        const Spacer(),

          AnimatedIcon(
           icon: AnimatedIcons.menu_close,
           progress: controller! ,
           color: CupertinoColors.white,
          )
      ],
    );
  }
}
