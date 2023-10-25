import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cinnamon/colors.dart';

class CinnamonAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CinnamonAppBar({super.key});

  @override
  State<CinnamonAppBar> createState() => _CinnamonAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CinnamonAppBarState extends State<CinnamonAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: cyclamen),
      backgroundColor: cyclamen,
      bottomOpacity: 0.3,
      shadowColor: Colors.transparent,
      title: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 8, bottom: 9),
            child: const Image(
              image: AssetImage('assets/images/icons8-bot-96.png'),
            ),
          ),
          Expanded(
            child: Text(
              'CINNAMON',
              style: GoogleFonts.sourceCodePro(
                fontSize: 30,
                color: babyPink,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: babyPink,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
