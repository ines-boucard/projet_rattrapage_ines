import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projet_rattrapage_ines/pages/home.dart';
import 'package:projet_rattrapage_ines/pages/listElixirs.dart';
import 'package:projet_rattrapage_ines/pages/listeWizards.dart';
import 'package:projet_rattrapage_ines/routeur.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GoRouter _router = GoRouter(
      initialLocation: '/',
      routes: <GoRoute>[
        GoRoute(
            path: '/',
            builder: (_, state) => HomePage(),
            //builder: (_, state) => ProductCheckPage(),
            routes: [
              GoRoute(
                path: 'listeWizard',
                builder: (_, state) =>  ListWizardPage(),
              ),
              GoRoute(
                path: 'listeElixirs',
                builder: (_, state) =>   ListElixirs(),
              ),
            ]
        )
      ]
  );


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.blueAccent,
        fontFamily: 'Roboto',
      ),
      //home: CartPage(),
    );
  }
}


