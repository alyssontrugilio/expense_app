import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: const Color(0xffEEF8F7),
              child: Stack(
                children: [
                  SvgPicture.asset('assets/svg/ellipses.svg'),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Gaste menos\nPoupe mais',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(
                  width: 358,
                  height: 67,
                  child: FilledButton(
                    onPressed: () {},
                    style: const ButtonStyle(),
                    child: Text(
                      'Comece agora',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: RichText(
                    text: TextSpan(
                        text: 'Você já tem uma conta?',
                        style: GoogleFonts.inter(
                          color: const Color(0xff444444),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: 'Entrar',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
