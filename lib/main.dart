import 'package:flutter/material.dart';
import 'package:inovice_gen/screen/home/view/client.dart';
import 'package:inovice_gen/screen/home/view/detail.dart';
import 'package:inovice_gen/screen/home/view/home.dart';
import 'package:inovice_gen/screen/home/view/ittem.dart';
import 'package:inovice_gen/screen/home/view/lastscreen.dart';
import 'package:inovice_gen/screen/home/view/splash.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.red,
      primarySwatch: Colors.red,
    ),
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => splash(),
      'home': (context) => home(),
      'detail': (context) => detail_page(),
      'client': (context) => clientdetail(),
      'last': (context) => last(),
      'ittem': (context) => itempage(),
    },
  ));
}
