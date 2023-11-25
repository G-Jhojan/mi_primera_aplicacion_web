import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';

class CustomMenuItem extends StatefulWidget {

  final String text;
  final Function onPressed;
  final int delay;

  const CustomMenuItem({super.key, required this.text, required this.onPressed, this.delay = 0});

  @override
  State<CustomMenuItem> createState() => CustomMenuItemState();
}

class CustomMenuItemState extends State<CustomMenuItem> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: widget.delay),
      duration: const Duration(milliseconds: 100),
      from: 5,
      child: MouseRegion(
        onEnter: (_)=> setState(() => isHover = true),
        onExit: (_)=> setState(() => isHover = false),
        child: GestureDetector(
          onTap: ()=> widget.onPressed(),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 150,
            height: 50,
            color: isHover ? CupertinoColors.systemPink : CupertinoColors.black,
            child: Center(
              child: Text(
                widget.text,
                style: const TextStyle(
                  color: CupertinoColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
            ),
         ),
        ),
      ),
    );
  }
}
