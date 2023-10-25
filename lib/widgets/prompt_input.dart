import 'package:cinnamon/widgets/generate_response_button.dart';
import 'package:flutter/material.dart';
import 'package:cinnamon/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class PromptInputField extends StatelessWidget {
  const PromptInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 30,
        left: 20,
        right: 20,
      ),
      padding: const EdgeInsets.only(left: 20, right: 15, bottom: 15, top: 15),
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
          GenerateResponseButton(),
        ],
      ),
    );
  }
}
