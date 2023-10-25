import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CinnamonAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CinnamonAppBar({super.key});

  @override
  State<CinnamonAppBar> createState() => _CinnamonAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CinnamonAppBarState extends State<CinnamonAppBar> {
  final appBarColor = Colors.pink;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: appBarColor),
      backgroundColor: appBarColor,
      bottomOpacity: 0.3,
      title: Row(
        children: [
          Expanded(
            child: Text(
              'CINNAMON',
              style: GoogleFonts.sourceCodePro(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
