import 'package:cinnamon/widgets/yappbar.dart';
import 'package:flutter/material.dart';
import 'package:cinnamon/colors.dart';

class PromptPage extends StatefulWidget {
  const PromptPage({super.key});

  @override
  State<PromptPage> createState() => _PromptPageState();
}

class _PromptPageState extends State<PromptPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cyclamen,
      appBar: const CinnamonAppBar(),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: babyPink,
          ),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
