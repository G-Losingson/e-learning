import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/color/color.dart';

class ActionBtn1 extends StatelessWidget {
  final String text;
  // ignore: prefer_typing_uninitialized_variables
  final routeSuiv;
  const ActionBtn1({super.key, required this.text, required this.routeSuiv});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => routeSuiv,
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 51,
        width: 266,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: tdYellow,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: GoogleFonts.openSans(
            color: tdBlack,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class ActionBtn2 extends StatelessWidget {
  final String text;
  // ignore: prefer_typing_uninitialized_variables
  final routeSuiv;
  const ActionBtn2({super.key, required this.text, required this.routeSuiv});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => routeSuiv,
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 51,
        width: 266,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: tdBlue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: GoogleFonts.openSans(
            color: tdWhite,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
