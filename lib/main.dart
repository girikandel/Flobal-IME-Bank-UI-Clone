import 'package:flutter/material.dart';
import 'package:globalbankuiclone/Pages/login_page.dart';

void main() {
  runApp(const GlobalUI());
}

class GlobalUI extends StatelessWidget {
  const GlobalUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Global Smart Plus',
      theme: ThemeData.dark(),
      home: const LoginPage(),
    );
  }
}
