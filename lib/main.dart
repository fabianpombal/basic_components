import 'package:flutter/material.dart';
import 'package:important_components/routes/routes.dart';
import 'package:important_components/theme/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: Routes.initialRoute,
      routes: Routes.routes,
      theme: AppTheme.claro,
    );
  }
}
