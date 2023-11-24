import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.systemPurple,
      child:  Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'About',
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
