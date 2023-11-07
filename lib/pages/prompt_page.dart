import 'dart:convert';
import 'package:cinnamon/bison_api_controller.dart';
import 'package:cinnamon/api_data.dart';
import 'package:cinnamon/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:cinnamon/colors.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class PromptPage extends StatefulWidget {
  const PromptPage({super.key});

  @override
  State<PromptPage> createState() => _PromptPageState();
}

class _PromptPageState extends State<PromptPage> {
  final TextEditingController _textEditingController = TextEditingController();

  String _promptInputString = '';
  String _promptOutputString = '';

  Future<void> generateResponse() async {
    _promptInputString =
        "${_textEditingController.text}(explain in an elaborate and organized fashion, use emojis and make it user friendly for non technical users)";
    final promptJson = jsonEncode({
      'prompt': {
        'text': _promptInputString,
      }
    });

    try {
      final response =
          await http.post(Uri.parse(baseUrl), body: promptJson, headers: {
        'Content-Type': 'application/json',
      });
      if (response.statusCode == 200) {
        debugPrint('Successfull Post!');
        BisonApiController apiController =
            BisonApiController.fromJson(jsonDecode(response.body));
        _promptOutputString = apiController.candidates![0].output.toString();
      }
    } catch (e) {
      debugPrint(e.toString());
      _promptOutputString = 'error!';
    }
    setState(() {});
  }

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
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.all(12.0),
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
                  child: Markdown(
                    selectable: true,
                    data: _promptOutputString,
                    styleSheet: MarkdownStyleSheet(
                      a: GoogleFonts.sourceCodePro(),
                      p: GoogleFonts.sourceCodePro(),
                      code: GoogleFonts.sourceCodePro(
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                  left: 20,
                  right: 20,
                ),
                height: 100,
                padding: const EdgeInsets.only(
                    left: 20, right: 15, bottom: 15, top: 15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(33.0)),
                  gradient: LinearGradient(
                    colors: [beige, babyPink],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                      offset: Offset(10, 10),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _textEditingController,
                        autocorrect: true,
                        enabled: true,
                        minLines: 2,
                        maxLines: 4,
                        cursorColor: cyclamen,
                        style: GoogleFonts.sourceCodePro(
                          color: cyclamen,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Enter your prompt here!\n...',
                          hintStyle: GoogleFonts.sourceCodePro(
                            color: brown,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                        gradient:
                            LinearGradient(colors: [cyclamen, flamingoPink]),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        boxShadow: [
                          BoxShadow(
                            color: flamingoPink,
                            blurRadius: 15,
                            offset: Offset(-3, 3),
                          ),
                        ],
                      ),
                      child: IconButton(
                        icon: const ImageIcon(
                          AssetImage('assets/images/lightning.png'),
                          color: beige,
                          size: 40,
                        ),
                        onPressed: generateResponse,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
