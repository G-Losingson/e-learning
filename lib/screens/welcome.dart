import 'package:flutter/material.dart';
import 'package:e_learning_app/screens/inscription.dart';
import 'package:e_learning_app/tools/space.dart';
import 'package:e_learning_app/tools/delayed_animation.dart';

import '../color/color.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: (double.infinity),
              child: DelayedAnimation(
                delay: 500,
                child: Image.asset('images/welcome.png'),
              ),
            ),
            verticalSpace(50),
            DelayedAnimation(
              delay: 1000,
              child: Text(
                'E-Learning',
                style: textTheme.titleLarge,
              ),
            ),
            verticalSpace(30),
            DelayedAnimation(
              delay: 2000,
              child: Text(
                'Explorez, apprenez et grandissez avec notre application d\'apprentissage en ligne.',
                style: textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
            ),
            DelayedAnimation(
              delay: 1500,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 90,
                  left: 90,
                  top: 20,
                  bottom: 50,
                ),
                child: Container(
                  height: 3,
                  width: 250,
                  color: tdBlue2,
                ),
              ),
            ),
            DelayedAnimation(
              delay: 2500,
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    'Commencer',
                    style: textTheme.titleSmall,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InscriptionPage(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
