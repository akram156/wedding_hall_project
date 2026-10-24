import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wedding_hall_project/pages/ContainerPage.dart';
import 'package:wedding_hall_project/theme/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ContainerPage());
  }
}
