import 'package:flutter/material.dart';
import 'package:gym/modules/login/presenter/pages/login_page.dart';
import 'package:gym/modules/suplementos/presenter/pages/supplements_page.dart';

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
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          primarySwatch: Colors.green,
          useMaterial3: true,
          brightness: Brightness.dark),
      home: const LoginPage(),
    );
  }
}
