import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer(
      {this.price,
      this.onchanged,
      this.onsubmit});

   TextEditingController fieldText = TextEditingController();
  Function(String data)? onsubmit;
  String? price;
  Function(String data)? onchanged;
  int? textinttextfield;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 60,
      width: 160,
      child: Center(
        child: TextField(
          controller: fieldText,
          keyboardType: TextInputType.number,
          onChanged: onchanged,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(width: 1, color: Colors.black87),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(width: 1, color: Colors.grey)),
            label: Text(
              "$price Pound",
              style: const TextStyle(fontSize: 17, color: Colors.black),
            ),
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
