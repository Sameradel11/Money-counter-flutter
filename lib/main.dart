import 'package:flutter/material.dart';

import 'Components/custom_container.dart';

void main() {
  runApp(MoneyCounter());
}

class MoneyCounter extends StatefulWidget {
  MoneyCounter({super.key});

  @override
  State<MoneyCounter> createState() => _MoneyCounterState();
  int totalprice = 0;
}

class _MoneyCounterState extends State<MoneyCounter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.all(15),
              child: ListView(children: [
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    const Text(
                      "Total Money",
                      style: TextStyle(fontSize: 21),
                      textAlign: TextAlign.right,
                    ),
                    Container(
                        color: Colors.grey,
                        height: 80,
                        width: double.infinity,
                        child: Center(
                            child: Text(
                          "${widget.totalprice}",
                          style: const TextStyle(fontSize: 21),
                        ))),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
                CustomContainer(
                  price: "200",
                  onchanged: (data) {
                    widget.totalprice =
                        widget.totalprice + int.parse(data) * 200;
                  },
                  onsubmit: (data) {
                    widget.totalprice =
                        widget.totalprice + int.parse(data) * 200;
                  },
                ),
                CustomContainer(
                  price: "100",
                  onchanged: (data) {
                    widget.totalprice =
                        widget.totalprice + int.parse(data) * 100;
                  },
                  onsubmit: (data) {
                    widget.totalprice =
                        widget.totalprice + int.parse(data) * 100;
                  },
                ),
                CustomContainer(
                  price: "50",
                  onchanged: (data) {
                    widget.totalprice =
                        widget.totalprice + int.parse(data) * 50;
                  },
                  onsubmit: (data) {
                    widget.totalprice =
                        widget.totalprice + int.parse(data) * 50;
                  },
                ),
                CustomContainer(
                  price: "20",
                  onchanged: (data) {
                    widget.totalprice =
                        widget.totalprice + int.parse(data) * 20;
                  },
                  onsubmit: (data) {
                    widget.totalprice =
                        widget.totalprice + int.parse(data) * 20;
                  },
                ),
                CustomContainer(
                  price: "10",
                  onchanged: (data) {
                    widget.totalprice =
                        widget.totalprice + int.parse(data) * 10;
                  },
                  action: TextInputAction.send,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // widget.totalprice;
                      // print(widget.totalprice);
                    });
                  },
                  child: const Text("Calculate"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widget.totalprice = 0;
                    });
                    CustomContainer(
                      price: "3",
                      onchanged: (data) {},
                    ).fieldText.dispose();
                  },
                  child: const Text("Clear"),
                )
              ]),
            )));
  }
}
