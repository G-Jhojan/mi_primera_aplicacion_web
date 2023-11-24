import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.activeGreen,
      child:  Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Contact',
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
