import 'package:cinnamon/pages/prompt_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Cinnamon());
}

class Cinnamon extends StatefulWidget {
  const Cinnamon({super.key});

  @override
  State<Cinnamon> createState() => _CinnamonState();
}

class _CinnamonState extends State<Cinnamon> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Cinnamon',
      home: PromptPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
