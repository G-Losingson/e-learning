import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:e_learning_app/utils/tools/theme.dart';

import 'screens/mainscreens/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeApp.lightTheme,
      darkTheme: ThemeApp.darkTheme,
      themeMode: ThemeMode.dark,
      home: const HomePage(),
    );
  }
}
