import 'package:flutter/material.dart';
import 'package:cinnamon/colors.dart';

class GenerateResponseButton extends StatelessWidget {
  const GenerateResponseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: const BoxDecoration(
        // color: cyclamen,
        gradient: LinearGradient(colors: [cyclamen, flamingoPink]),
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
        onPressed: () {
          debugPrint('GenerateResponseButton pressed');
        },
      ),
    );
  }
}
