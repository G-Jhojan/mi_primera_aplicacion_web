import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 50,
          width: 150,
          color: CupertinoColors.black,
          child: Row(
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
          ),
        ),
      ),
    );
  }
}
