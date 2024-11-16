import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/blocs/connexion-bloc.dart';
import 'package:testflutter/blocs/inscription-bloc.dart';
import 'package:testflutter/blocs/name-blocs.dart';
import 'package:testflutter/pages/accueil.dart';
import 'package:testflutter/pages/connexion.dart';
import 'package:testflutter/pages/cours.dart';
import 'package:testflutter/pages/home-page.dart';
import 'package:testflutter/pages/inscription-ui/inscription-desktop.dart';
import 'package:testflutter/pages/inscription.dart';

final _router = GoRouter(routes: [
  GoRoute(
    path: '/accueil',
    builder: (context, state) => const Accueil(),
  ),
  GoRoute(
    path: '/inscription',
    builder: (context, state) => const InscriptionPage(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: '/',
    builder: (context, state) => const ConnexionPage(),
  ),
]);

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => NameBlocs()),
      ChangeNotifierProvider(create: (_) => InscriptionBloc()),
      ChangeNotifierProvider(create: (_) => ConnexionBloc())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Magui Shu',
        debugShowCheckedModeBanner: false,
        routerConfig: _router);
  }
}
