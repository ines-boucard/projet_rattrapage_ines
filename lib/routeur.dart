import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:projet_rattrapage_ines/pages/home.dart';
import 'package:projet_rattrapage_ines/pages/listElixirs.dart';
import 'package:projet_rattrapage_ines/pages/listeWizards.dart';

import 'main.dart';

class Routes{
  static GoRouter getRoutes()=>GoRouter(
    initialLocation: '/home',
      routes: [
        GoRoute(
            path: '/home',
          builder: (context,state)=>const HomePage(),
          routes: [
            GoRoute(
                path: '/listeWizard',
                builder: (context,state)=>const ListWizardPage()
            ),
            GoRoute(
                path: '/listeElixirs',
                builder: (context,state)=>const ListElixirs()
            )
          ]
        ),
      ]
  );
}