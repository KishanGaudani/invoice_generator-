import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../screen/home/controller/pushnamed.dart';

Widget info_Box(
    double h, double w, String title, IconData i, BuildContext c, String rout) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () {
        pushnamed(c, rout);
      },
      borderRadius: BorderRadius.circular(20),
      splashColor: Colors.red.shade400,
      highlightColor: Colors.red.shade100,
      child: Container(
        padding: EdgeInsets.only(right: 20, left: 20),
        height: h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: Colors.red.shade400),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$title",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, color: Colors.red, fontSize: 30),
            ),
            Container(
              height: 70,
              width: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.redAccent),
              child: Icon(
                i,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget Liveinfo(double h, double w) {
  return Container(
    height: h,
    width: w,
  );
}
