import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return  MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: (){
          print('click en Menú');
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 50,
          width: 150,
          color: CupertinoColors.black,
          child: Row(
            children: [
              Text(
                'Menú',
                style: GoogleFonts.robotoCondensed(
                  color: CupertinoColors.white,
                  fontSize: 20,
                ),
              ),
              const Spacer(),
              const Icon(
                  CupertinoIcons.ellipsis_vertical,
                  color: CupertinoColors.white,
                  size: 20,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
