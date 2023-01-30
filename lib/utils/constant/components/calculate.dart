class calculate {
  String? subtotal;
  String? discount;
  String? tax;
  String? shippingcharge;
  int? total;
  calculate(String st, String dis, String shipcharge) {
    subtotal = st;
    discount = dis;
    shippingcharge = shipcharge;

    total = int.parse(subtotal!) - int.parse(discount!);
    print("$total");
  }
}
