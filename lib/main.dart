import 'package:flutter/material.dart';
import 'package:mail_finder/features/home/screens/search_screen.dart';

void main() {
  runApp(const MailFinderApp());
}

class MailFinderApp extends StatelessWidget {
  const MailFinderApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SearchScreen(),
    );
  }
}
