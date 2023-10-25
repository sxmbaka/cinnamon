import 'package:cinnamon/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:cinnamon/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cinnamon/widgets/prompt_input.dart';

class PromptPage extends StatefulWidget {
  const PromptPage({super.key});

  @override
  State<PromptPage> createState() => _PromptPageState();
}

class _PromptPageState extends State<PromptPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: PromptInputField(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
