import 'package:e_learning_app/screens/mainscreens/pages/connexion.dart';
import 'package:e_learning_app/screens/mainscreens/pages/home.dart';
import 'package:e_learning_app/screens/mainscreens/pages/inscription.dart';
import 'package:e_learning_app/utils/routes/router.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      name: AppRoutesConst.homeRouteName,
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: AppRoutesConst.homeRouteName,
      path: '/inscription',
      builder: (context, state) => const InscriptionPage(),
    ),
    GoRoute(
      name: AppRoutesConst.homeRouteName,
      path: '/connexion',
      builder: (context, state) => const ConnexionPage(),
    ),
  ],
);
