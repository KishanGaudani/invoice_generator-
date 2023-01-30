import 'package:flutter/material.dart';

Widget txtformfield(String lable, String hint, IconData i,
    TextEditingController txcontrol, Key k) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: txcontrol,
        decoration: InputDecoration(
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          prefixIcon: Icon(i, size: 22),
          label: Text("${lable}"),
          hintText: "$hint",
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "Fill The Detail";
          } else {
            return null;
          }
        }),
  );
}

Widget txtfield(String lable, String hint, TextEditingController txcontrol) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      decoration: InputDecoration(
        label: Text(lable),
        hintText: hint,
      ),
    ),
  );
}
