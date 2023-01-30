// ignore_for_file: camel_case_types

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('aseets/images/Asset 1.png'),
      loaderColor: Colors.red,
      logoWidth: 170,
      title: Text(
        "Invoice Generator",
        style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 30),
      ),
      backgroundColor: Colors.white,
      showLoader: true,
      loadingText: const Text("Loading..."),
      navigator: const home(),
      durationInSeconds: 3,
    );
  }

  void image() {
    SizedBox(
      width: 200,
      height: 200,
      child: Image.asset("aseets/images/Asset 1.png"),
    );
  }
}
