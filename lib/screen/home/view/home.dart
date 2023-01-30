// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clay_containers/clay_containers.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        actions: [
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text(
                  "Setting",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                ),
              ),
              PopupMenuItem(
                child: Text(
                  "Feedback",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                ),
              ),
            ];
          })
        ],
        title: Text(
          "Invoice Generator",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600, letterSpacing: 3),
        ),
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: ClayContainer(
                    height: 80,
                    width: 110,
                    color: const Color(0xFFF2F2F6),
                    borderRadius: 20,
                    curveType: CurveType.concave,
                    depth: 25,
                    spread: 20,
                    child: GestureDetector(
                      child: Center(
                          child: IconButton(
                        focusNode: FocusNode(),
                        onPressed: () {
                          setState(() {
                            Colors.red;
                            Navigator.pushNamed(context, 'client');
                          });
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        splashColor: Colors.red,
                        iconSize: 30,
                      )),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
