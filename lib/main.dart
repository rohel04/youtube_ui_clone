import 'package:flutter/material.dart';
import 'package:youtube_clone/screens/home.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey.shade900,
            elevation: 0.0,
          ),
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.grey.shade800),
      home: HomeScreen(),
    );
  }
}
