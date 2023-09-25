import 'package:e_learning_app/screens/widgets/text.widget.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_app/utils/tools/delayed_animation.dart';
import 'package:e_learning_app/screens/mainscreens/pages/inscription.dart';

import '../../../utils/color/color.dart';
import '../../widgets/action.button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(
              top: 62,
              left: 10,
              right: 10,
            ),
            width: 371,
            height: 378,
            child: DelayedAnimation(
              delay: 500,
              child: Image.asset('images/welcome.png'),
            ),
          ),
          DelayedAnimation(
            delay: 1500,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  margin: const EdgeInsets.only(top: 10),
                  child: TitleLarge(title: 'E-Learning'),
                ),
                const Center(
                  child: ExploreTitle(),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 13),
            child: DelayedAnimation(
              delay: 1000,
              child: Container(
                height: 4,
                width: 139,
                decoration: BoxDecoration(
                  color: tdBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 66),
            child: const DelayedAnimation(
              delay: 2000,
              child: ActionBtn1(
                text: 'Commencer',
                routeSuiv: InscriptionPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
