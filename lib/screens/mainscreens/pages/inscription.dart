import 'package:e_learning_app/screens/mainscreens/pages/connexion.dart';
import 'package:e_learning_app/screens/widgets/text.widget.dart';
import 'package:e_learning_app/utils/tools/delayed_animation.dart';
import 'package:flutter/material.dart';
import '../../widgets/action.button.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({super.key});

  @override
  State<InscriptionPage> createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {
  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();

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
                child: TitleLarge(title: 'Inscription'),
              ),
              const DelayedAnimation(
                delay: 1000,
                child: ExploreTitle(),
              ),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    DelayedAnimation(
                      delay: 3000,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person_outline),
                          labelText: 'Votre nom complet',
                        ),
                      ),
                    ),
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
                    DelayedAnimation(
                      delay: 1500,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.lock_outline),
                          labelText: 'Confirmer votre mot de passe',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.only(top: 66),
                child: const DelayedAnimation(
                  delay: 2000,
                  child: ActionBtn2(
                    text: 'Inscription',
                    routeSuiv: ConnexionPage(),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 5000,
                child: Container(
                  margin: const EdgeInsets.only(top: 34),
                  child: const TextUBtn(
                    text: 'Vous n\'avez pas de compte ? ',
                    textBtn: 'Cliquez ici',
                    routeSuiv: ConnexionPage(),
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
