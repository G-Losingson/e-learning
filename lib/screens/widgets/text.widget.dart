import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color/color.dart';

// ignore: must_be_immutable
class TitleLarge extends StatelessWidget {
  String title;
  TitleLarge({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: 283,
      height: 63,
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class ExploreTitle extends StatelessWidget {
  const ExploreTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: 352,
      height: 35,
      child: Text(
        'Explorez, apprenez et grandissez avec notre application d\'apprentissage en ligne.',
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class TextBtn extends StatelessWidget {
  final String text;
  final Color? textColor;
  final routeSuiv;

  const TextBtn({super.key, required this.routeSuiv, this.textColor, required this.text});

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
      child: Text(
        text,
        style: GoogleFonts.openSans(
          color: textColor?? tdRed,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class TextUBtn extends StatelessWidget {
  final String? text;
  final String textBtn;
  // ignore: prefer_typing_uninitialized_variables
  final routeSuiv;

  const TextUBtn(
      {super.key, required this.routeSuiv, required this.textBtn, this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text!,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center,
        ),
        TextBtn(text: textBtn, routeSuiv: routeSuiv,),
      ],
    );
  }
}
