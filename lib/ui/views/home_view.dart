import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.destructiveRed,
      child:  Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Home View',
            style:  GoogleFonts.montserratAlternates(
              color: CupertinoColors.white,
              fontSize: 80,
              fontWeight: FontWeight.bold
            ),
          ),
        )
      ),

    );
  }
}
