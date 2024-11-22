import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/widgets.dart';

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
            child: ColoredBox(
              color: const Color(0xffEEF8F7),
              child: Stack(
                children: [
                  SvgPicture.asset('assets/svg/ellipses.svg'),
                  Image.asset(
                    'assets/png/onboarding_image.png',
                    fit: BoxFit.cover,
                  )
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
                PrimaryButtonWidget(
                  text: 'Comece agora',
                  onPressed: () {},
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
