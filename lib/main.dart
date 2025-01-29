import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_app/theme/app_themes.dart';
import 'views/student_card.dart';
import '../providers/providers.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState(); // Використовуємо ConsumerState
}

class _MyAppState extends ConsumerState<MyApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(studentProvider.notifier); // Використання ref


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? darkTheme : lightTheme,
      home: Scaffold(
        appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
    child: Container(
    margin: const EdgeInsets.symmetric(horizontal: 50),

        child: AppBar(
          centerTitle: true,
          title: const Text('Карта Студента'),

          leading: IconButton(
            onPressed: () {
              ref.read(studentProvider.notifier).showNextCard();
            },
            icon: const Icon(Icons.person),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
                onPressed: toggleTheme,
              ),
            ),
          ],
          ),
        ),
        ),
        body: const StudentCard(),
      ),
    );
  }
}
