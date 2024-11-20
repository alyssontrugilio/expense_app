import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Center(
          child: Text(
            'expense',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
