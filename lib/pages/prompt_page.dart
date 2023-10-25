import 'package:cinnamon/widgets/yappbar.dart';
import 'package:flutter/material.dart';

class PromptPage extends StatefulWidget {
  const PromptPage({super.key});

  @override
  State<PromptPage> createState() => _PromptPageState();
}

class _PromptPageState extends State<PromptPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CinnamonAppBar(),
    );
  }
}
