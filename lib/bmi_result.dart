import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final bool isMale;
  final double result;
  final int age;
  const BmiResult(this.isMale, this.age, this.result, {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bmi Result"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Gender: ${isMale ? "Male" : "Female"} ",
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "Result: ${result.round()} ",
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "Age: $age ",
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      )),
    );
  }
}
