// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/constant/components/sizebox.dart';
import '../../../utils/constant/components/textfeild.dart';
import '../model/model.dart';

class clientdetail extends StatefulWidget {
  const clientdetail({Key? key}) : super(key: key);

  @override
  State<clientdetail> createState() => _clientdetailState();
}

class _clientdetailState extends State<clientdetail> {
  String? name;
  String? mail;
  String? number;
  String? address;
  var fieldkey = GlobalKey<FormState>();
  TextEditingController txname = TextEditingController();
  TextEditingController txmail = TextEditingController();
  TextEditingController txnumber = TextEditingController();
  TextEditingController txaddress = TextEditingController();
  TextEditingController txaddress2 = TextEditingController();
  TextEditingController txaddress3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, 'home');
            setState(() {
              Colors.black;
            });
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        actions: const [],
        title: Text(
          "Invoice generator",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600, letterSpacing: 3),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                h(5),
                txtformfield(
                    "Name", "Enter The Name", Icons.person, txname, fieldkey),
                txtformfield(
                    "Email", "Enter The Mail", Icons.mail, txmail, fieldkey),
                txtformfield(
                  "Mobile No",
                  "Enter The Mobile No",
                  Icons.call,
                  txnumber,
                  fieldkey,
                ),
                txtformfield(
                  "Shipping Address",
                  "Address",
                  Icons.airport_shuttle,
                  txaddress,
                  fieldkey,
                ),
                txtfield("Address Line 2", "Address", txaddress2),
                txtfield("Address Line 3", "Address", txaddress3),
                h(10),
                ElevatedButton.icon(
                    onPressed: () {
                      name = txname.text;
                      mail = txmail.text;
                      number = txnumber.text;
                      address = txaddress.text;
                      setState(() {
                        client_info c = client_info({
                          "name": "$name",
                          "email": "$mail",
                          "number": "$number",
                          "address": "$address"
                        });

                        Navigator.pushNamed(context, "ittem", arguments: c);
                      });
                    },
                    icon: const Icon(Icons.done),
                    label: const Text("Next")),
                h(5)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
