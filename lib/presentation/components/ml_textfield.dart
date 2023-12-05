import 'package:flutter/material.dart';

class MlTextfield extends StatefulWidget {
  const MlTextfield({
    required this.controller,
    super.key,
  });

  final TextEditingController controller;

  @override
  State<MlTextfield> createState() => _MlTextfieldState();
}

class _MlTextfieldState extends State<MlTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      style: const TextStyle(color: Color(0xFF46A291)),
      decoration: InputDecoration(
        fillColor:
            const Color(0xFFF1F7F6), // Set the color inside the TextField
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF237A6A)),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFF237A6A))),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF237A6A)),
            borderRadius: BorderRadius.circular(10)),
      ),
      onChanged: (value) {},
      textAlign: TextAlign.start,
    );
  }
}
