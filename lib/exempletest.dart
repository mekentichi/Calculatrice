import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_app/controller.dart';
import 'package:pizza_app/rows.dart';

class Exemple extends StatelessWidget {
  const Exemple({super.key});

  @override
  Widget build(BuildContext context) {
    Controllerdragger controller = Get.put(Controllerdragger());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcutrice'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 40),
        child: Column(
          children: [
            const SizedBox(height: 220),
            GetBuilder<Controllerdragger>(builder: (controller) {
              return Expanded(
                flex: 2,
                child: Container(
                    padding: const EdgeInsets.only(right: 20),
                    width: double.infinity,
                    height: 60,
                    child: Text(
                      controller.typeR == "="
                          ? controller.resultatText.toString()
                          : controller.firstText,
                      // textDirection: TextDirection.rtl,
                       textAlign: TextAlign.right,
                      style: const TextStyle(
                          fontSize: 80, fontWeight: FontWeight.bold),
                    )),
              );
            }),
            const SizedBox(height: 40),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    if (controller.firstText.isEmpty) {
                      controller.reFresh("0", 0);
                      controller.typeRelation("");
                    } else if (controller.firstText == '0') {
                      controller.reFresh("0", 0);
                      controller.typeRelation("");
                    } else {
                      controller.reFresh("0", 0);
                      controller.typeRelation("");
                    }
                  },
                  child: Container(
                    height: 70,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: const Center(
                      child: Text(
                        'C',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                MyWidget(
                  onPressed: () {
                    if (controller.firstText.isEmpty) {
                      controller.reFresh("0", 0);
                    } else if (controller.firstText == '0') {
                      controller.reFresh("0", 0);
                    } else {
                      if (controller.firstText.length == 1) {
                        controller.reFresh("0", 0);
                      } else {
                        controller.reFresh(
                            controller.firstText = controller.firstText
                                .substring(0, controller.firstText.length - 1),
                            0);
                      }
                    }
                  },
                  color: Colors.grey,
                  colorText: Colors.black,
                  text: '<',
                ),
                MyWidget(
                  onPressed: () {
                    controller.one = double.parse(controller.firstText);

                    controller.reFresh("0", 0);
                    controller.typeRelation("/");
                  },
                  color: Colors.orangeAccent,
                  colorText: Colors.white,
                  text: '/',
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                MyWidget(
                  onPressed: () {
                    if (controller.firstText.isEmpty) {
                      controller.reFresh("7", 0);
                    } else if (controller.firstText == '0') {
                      controller.reFresh("7", 0);
                    } else {
                      controller.reFresh(controller.firstText + "7", 0);
                    }
                  },
                  color: Colors.grey,
                  colorText: Colors.black,
                  text: '7',
                ),
                MyWidget(
                  onPressed: () {
                    if (controller.firstText.isEmpty) {
                      controller.reFresh("8", 0);
                    } else if (controller.firstText == '0') {
                      controller.reFresh("8", 0);
                    } else {
                      controller.reFresh(controller.firstText + "8", 0);
                    }
                  },
                  color: Colors.grey,
                  colorText: Colors.black,
                  text: '8',
                ),
                MyWidget(
                  onPressed: () {
                    if (controller.firstText.isEmpty) {
                      controller.reFresh("9", 0);
                    } else if (controller.firstText == '0') {
                      controller.reFresh("9", 0);
                    } else {
                      controller.reFresh(controller.firstText + "9", 0);
                    }
                  },
                  color: Colors.grey,
                  colorText: Colors.black,
                  text: '9',
                ),
                MyWidget(
                  onPressed: () {
                    controller.one = double.parse(controller.firstText);

                    controller.reFresh("0", 0);
                    controller.typeRelation("*");
                  },
                  color: Colors.orangeAccent,
                  colorText: Colors.white,
                  text: '*',
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                MyWidget(
                  onPressed: () {
                    if (controller.firstText.isEmpty) {
                      controller.reFresh("4", 0);
                    } else if (controller.firstText == '0') {
                      controller.reFresh("4", 0);
                    } else {
                      controller.reFresh(controller.firstText + "4", 0);
                    }
                  },
                  color: Colors.grey,
                  colorText: Colors.black,
                  text: '4',
                ),
                MyWidget(
                  onPressed: () {
                    if (controller.firstText.isEmpty) {
                      controller.reFresh("5", 0);
                    } else if (controller.firstText == '0') {
                      controller.reFresh("5", 0);
                    } else {
                      controller.reFresh(controller.firstText + "5", 0);
                    }
                  },
                  color: Colors.grey,
                  colorText: Colors.black,
                  text: '5',
                ),
                MyWidget(
                  onPressed: () {
                    if (controller.firstText.isEmpty) {
                      controller.reFresh("6", 0);
                    } else if (controller.firstText == '0') {
                      controller.reFresh("6", 0);
                    } else {
                      controller.reFresh(controller.firstText + "6", 0);
                    }
                  },
                  color: Colors.grey,
                  colorText: Colors.black,
                  text: '6',
                ),
                MyWidget(
                  onPressed: () {
                    controller.one = double.parse(controller.firstText);
                    controller.reFresh("0", 0);
                    controller.typeRelation("-");
                  },
                  color: Colors.orangeAccent,
                  colorText: Colors.white,
                  text: '-',
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                MyWidget(
                  onPressed: () {
                    if (controller.firstText.isEmpty) {
                      controller.reFresh("1", 0);
                    } else if (controller.firstText == '0') {
                      controller.reFresh("1", 0);
                    } else {
                      controller.reFresh(controller.firstText + "1", 0);
                    }
                  },
                  color: Colors.grey,
                  colorText: Colors.black,
                  text: '1',
                ),
                MyWidget(
                  onPressed: () {
                    if (controller.firstText.isEmpty) {
                      controller.reFresh("2", 0);
                    } else if (controller.firstText == '0') {
                      controller.reFresh("2", 0);
                    } else {
                      controller.reFresh(controller.firstText + "2", 0);
                    }
                  },
                  color: Colors.grey,
                  colorText: Colors.black,
                  text: '2',
                ),
                MyWidget(
                  onPressed: () {
                    if (controller.firstText.isEmpty) {
                      controller.reFresh("3", 0);
                    } else if (controller.firstText == '0') {
                      controller.reFresh("3", 0);
                    } else {
                      controller.reFresh(controller.firstText + "3", 0);
                    }
                  },
                  color: Colors.grey,
                  colorText: Colors.black,
                  text: '3',
                ),
                MyWidget(
                  onPressed: () {
                    controller.one = double.parse(controller.firstText);
                    controller.reFresh("0", 0);
                    controller.typeRelation("+");
                  },
                  color: Colors.orangeAccent,
                  colorText: Colors.white,
                  text: '+',
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    if (controller.firstText.isEmpty) {
                      controller.reFresh("0", 0);
                    } else if (controller.firstText == '0') {
                    } else {
                      controller.reFresh(controller.firstText + "0", 0);
                    }
                  },
                  child: Container(
                    height: 70,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: const Center(
                      child: Text(
                        '0',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                MyWidget(
                  onPressed: () {
                    if (controller.firstText.isEmpty) {
                      controller.reFresh("0", 0);
                    } else if (controller.firstText == '0') {
                      controller.reFresh("0.", 0);
                    } else {
                      controller.reFresh(controller.firstText + ".", 0);
                    }
                  },
                  color: Colors.grey,
                  colorText: Colors.black,
                  text: ',',
                ),
                MyWidget(
                  onPressed: () {
                    if (controller.typeR == "+") {
                      double result =
                          controller.one! + double.parse(controller.firstText);
                      String RR = result.toString();
                      controller.reFresh("${controller.firstText}", result);
                      controller.typeRelation("=");
                    } else if (controller.typeR == "-") {
                      double result =
                          controller.one! - double.parse(controller.firstText);
                      String RR = result.toString();
                      controller.reFresh("${controller.firstText}", result);
                      controller.typeRelation("=");
                    } else if (controller.typeR == "/") {
                      var result =
                          controller.one! / int.parse(controller.firstText);
                      String RR = result.toString();
                      controller.reFresh("${controller.firstText}", result);
                      controller.typeRelation("=");
                    } else if (controller.typeR == "*") {
                      double result =
                          controller.one! * double.parse(controller.firstText);
                      String RR = result.toString();
                      controller.reFresh("${controller.firstText}", result);
                      controller.typeRelation("=");
                    } else {
                      if (controller.firstText.isEmpty) {
                        controller.reFresh("0", 0);
                      } else if (controller.firstText == '0') {
                        controller.reFresh("0", 0);
                      } else {
                        controller.reFresh("0", 0);
                      }
                    }
                  },
                  color: Colors.orangeAccent,
                  colorText: Colors.white,
                  text: '=',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
