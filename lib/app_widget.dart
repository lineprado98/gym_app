import 'package:flutter/material.dart';
import 'package:gym/modules/suplementos/presenter/pages/suplementos_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym',
      theme: ThemeData(),
      home: const SuplementosPage(),
    );
  }
}
