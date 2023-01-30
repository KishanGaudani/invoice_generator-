// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/constant/components/calculate.dart';
import '../../../utils/constant/components/textfeild.dart';
import '../model/model.dart';

class itempage extends StatefulWidget {
  const itempage({Key? key}) : super(key: key);

  @override
  State<itempage> createState() => _itempageState();
}

class _itempageState extends State<itempage> {
  var ke = GlobalKey<FormState>();
  TextEditingController txtitemname = TextEditingController();
  TextEditingController txtitemprice = TextEditingController();
  TextEditingController txtitemqty = TextEditingController();
  TextEditingController txtitemdiscount = TextEditingController();
  TextEditingController txtitemship = TextEditingController();
  String? itemname;
  String? itemprice;
  String? itemqty;
  String? itemdis;
  String? itemship;
  @override
  Widget build(BuildContext context) {
    client_info c = ModalRoute.of(context)!.settings.arguments as client_info;
    return SafeArea(
      child: Scaffold(
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
              "Invoice Generator",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, letterSpacing: 3),
            ),
            centerTitle: true,
            backgroundColor: Colors.red),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Enter Item Detail",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  txtformfield("Item Name", "Item Name", Icons.article_rounded,
                      txtitemname, ke),
                  txtformfield("Item Price", "Item Price",
                      Icons.account_balance_wallet_outlined, txtitemprice, ke),
                  txtformfield("Item Qty", "Item Qty",
                      Icons.add_shopping_cart_sharp, txtitemqty, ke),
                  txtformfield("Item Discount ( Rupee )", "Item Discount",
                      Icons.discount_outlined, txtitemdiscount, ke),
                  txtformfield("Shipping Charge", "Charge",
                      Icons.currency_rupee, txtitemship, ke),
                  ElevatedButton.icon(
                      onPressed: () {
                        itemname = txtitemname.text;
                        itemprice = txtitemprice.text;
                        itemqty = txtitemqty.text;
                        itemdis = txtitemdiscount.text;

                        calculate sum =
                            calculate("$itemprice", "$itemdis", "$itemdis");
                        client_info a = client_info({
                          "itemname": "$itemname",
                          "price": "$itemprice",
                          "qty": "$itemqty",
                          "discount": "$itemdis"
                        });
                        c.cvalue.addAll(a.cvalue);
                        c.cvalue.addAll({"total": sum.total});
                        Navigator.pushNamed(context, "last", arguments: c);
                      },
                      icon: const Icon(Icons.done),
                      label: const Text("Next")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
