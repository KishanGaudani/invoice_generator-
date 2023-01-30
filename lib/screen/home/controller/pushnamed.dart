import 'package:flutter/material.dart';

Future<T?> pushnamed<T extends Object?>(context, String routename) {
  return Navigator.of(context).pushNamed<T>(routename);
}
