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
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [cyclamen, flamingoPink],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Flexible(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(33.0)),
                    gradient: LinearGradient(
                      colors: [babyPink, beige, beige, babyPink],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
