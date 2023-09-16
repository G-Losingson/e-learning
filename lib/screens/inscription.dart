import 'package:e_learning_app/screens/connexion.dart';
import 'package:e_learning_app/tools/delayed_animation.dart';
import 'package:flutter/material.dart';

import '../tools/space.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({super.key});

  @override
  State<InscriptionPage> createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {
  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();

    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 500,
                child: Text(
                  'Inscription',
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
              verticalSpace(30),
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
              verticalSpace(50),
              DelayedAnimation(
                delay: 4000,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text(
                      'Inscription',
                      style: textTheme.titleSmall,
                    ),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
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
              DelayedAnimation(
                delay: 5000,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Vous n\'avez pas de compte?',
                      style: textTheme.titleSmall,
                      textAlign: TextAlign.center,
                    ),
                    TextButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ConnexionPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Cliquez ici',
                        style: textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
