import 'package:flutter/material.dart';

Widget DefultButton(
        {double width = double.infinity,
        Color background = Colors.blue,
        required String text,
        required Function function}) =>
    Container(
      color: background,
      width: width,
      child: MaterialButton(
          onPressed: () {
            function;
          },
          child: Text(text,
              style: const TextStyle(
                color: Colors.white,
              ))),
    );

Widget DefultTextFormField({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required IconData prefix,
}) {
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty) {
        return "Please enter your email";
      }
      return null;
    },
    controller: controller,
    keyboardType: type,
    onFieldSubmitted: (String value) {
      print(value);
    },
    onChanged: (String value) {
      print(value);
    },
    decoration: const InputDecoration(
      labelText: "Email Address",
      prefixIcon: Icon(
        Icons.email,
      ),
      border: OutlineInputBorder(),
    ),
  );
}
