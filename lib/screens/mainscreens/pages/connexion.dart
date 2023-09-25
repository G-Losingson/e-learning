import 'package:e_learning_app/screens/mainscreens/pages/inscription.dart';
import 'package:e_learning_app/utils/color/color.dart';
import 'package:e_learning_app/utils/tools/delayed_animation.dart';
import 'package:flutter/material.dart';

import '../../../utils/tools/space.dart';
import '../../widgets/action.button.dart';
import '../../widgets/text.widget.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();

    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 35,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 500,
                child: Text(
                  'Connexion',
                  style: textTheme.titleLarge,
                ),
              ),
              verticalSpace(30),
              DelayedAnimation(
                delay: 1000,
                child: Text(
                  'Explorez, apprenez et grandissez avec notre application d\'apprentissage en ligne.',
                  style: textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
              ),
              verticalSpace(50),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    DelayedAnimation(
                      delay: 2500,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email_outlined),
                          labelText: 'Votre adresse mail',
                        ),
                      ),
                    ),
                    DelayedAnimation(
                      delay: 2000,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.lock_outline),
                          labelText: 'Saisir un mot de passe',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const DelayedAnimation(
                delay: 1500,
                child: TextBtn(
                  text: 'Mot de passe oublié ? ',
                  textColor: tdBlack,
                  routeSuiv: InscriptionPage(),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.only(top: 66),
                child: const DelayedAnimation(
                  delay: 2000,
                  child: ActionBtn2(
                    text: 'Connexion',
                    routeSuiv: InscriptionPage(),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 5000,
                child: Container(
                  margin: const EdgeInsets.only(top: 34),
                  child: TextUBtn(
                    text: 'Avez-vous déjà un compte ?',
                    textBtn: 'Cliquez ici',
                    routeSuiv: const InscriptionPage(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
