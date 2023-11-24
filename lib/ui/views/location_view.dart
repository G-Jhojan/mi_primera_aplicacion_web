import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.systemPink,
      child:  Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Location',
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
