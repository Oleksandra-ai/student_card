import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_app/theme/app_themes.dart';
import 'views/student_card.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}




class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: isDarkMode ? darkTheme : lightTheme,

      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Student Card'),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 50),
              child: IconButton(
                icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
                onPressed: toggleTheme,
              ),
            ),
          ],
        ),
        body: const StudentCard(),
      ),
    );
  }
}